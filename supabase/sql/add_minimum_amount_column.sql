-- Add minimum_amount column to coupons table
ALTER TABLE public.coupons 
ADD COLUMN minimum_amount NUMERIC(10,2) DEFAULT NULL;

-- Update existing coupons with minimum amounts
UPDATE public.coupons 
SET minimum_amount = 
  CASE 
    -- Percentage discounts with minimum amounts
    WHEN code = 'SAVE10' THEN 500.00
    WHEN code = 'NEWUSER20' THEN 1000.00
    WHEN code = 'STUDENT50' THEN 1500.00
    WHEN code = 'SUMMER25' THEN 800.00
    WHEN code = 'FESTIVE30' THEN 2000.00
    WHEN code = 'WINTER15' THEN 600.00
    WHEN code = 'STUDENT40' THEN 1200.00
    WHEN code = 'LOYALTY10' THEN 300.00
    WHEN code = 'FLASH20' THEN 100.00
    
    -- Amount discounts with minimum amounts
    WHEN code = 'SAVE50' THEN 200.00
    WHEN code = 'SAVE100' THEN 500.00
    WHEN code = 'SAVE200' THEN 1000.00
    WHEN code = 'SAVE500' THEN 3000.00
    WHEN code = 'BONUS300' THEN 2500.00
    WHEN code = 'TODAY50' THEN 300.00
    
    -- Expired coupons (no minimum amount)
    WHEN code LIKE 'EXPIRED%' THEN NULL
  END;

-- Verify the update
SELECT code, discount_value, discount_type, minimum_amount, expiry_date, is_active
FROM public.coupons
ORDER BY created_at DESC;
