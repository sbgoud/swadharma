-- Create coupons table
CREATE TABLE IF NOT EXISTS public.coupons (
    id UUID DEFAULT gen_random_uuid() PRIMARY KEY,
    code VARCHAR(50) NOT NULL UNIQUE,
    discount_value NUMERIC(10,2) NOT NULL,
    discount_type VARCHAR(10) NOT NULL CHECK (discount_type IN ('percentage', 'amount')),
    expiry_date TIMESTAMPTZ,
    is_active BOOLEAN NOT NULL DEFAULT TRUE,
    created_at TIMESTAMPTZ NOT NULL DEFAULT NOW(),
    updated_at TIMESTAMPTZ NOT NULL DEFAULT NOW()
);

-- Create RLS policies for coupons
DROP POLICY IF EXISTS "Allow public to view active coupons" ON public.coupons;

CREATE POLICY "Allow public to view active coupons"
ON public.coupons
FOR SELECT
TO authenticated, anon
USING (is_active = TRUE);

-- Create index for better performance
CREATE INDEX IF NOT EXISTS idx_coupons_code ON public.coupons(code);
CREATE INDEX IF NOT EXISTS idx_coupons_is_active ON public.coupons(is_active);
CREATE INDEX IF NOT EXISTS idx_coupons_expiry_date ON public.coupons(expiry_date);

-- Seed initial coupons
INSERT INTO public.coupons (code, discount_value, discount_type, expiry_date, is_active)
VALUES 
    ('SAVE10', 10.00, 'percentage', NOW() + INTERVAL '365 days', TRUE),
    ('NEWUSER20', 20.00, 'percentage', NOW() + INTERVAL '30 days', TRUE),
    ('STUDENT50', 50.00, 'percentage', NOW() + INTERVAL '180 days', TRUE)
ON CONFLICT DO NOTHING;

-- Create trigger to update updated_at field
CREATE OR REPLACE FUNCTION public.handle_updated_at()
RETURNS TRIGGER AS $$
BEGIN
    NEW.updated_at = NOW();
    RETURN NEW;
END;
$$ LANGUAGE plpgsql;

DROP TRIGGER IF EXISTS set_coupons_updated_at ON public.coupons;

CREATE TRIGGER set_coupons_updated_at
    BEFORE UPDATE ON public.coupons
    FOR EACH ROW
    EXECUTE FUNCTION public.handle_updated_at();
