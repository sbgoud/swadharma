-- Seed dummy coupons with both percentage and amount discounts
INSERT INTO public.coupons (code, discount_value, discount_type, expiry_date, is_active)
VALUES 
    -- Percentage discounts
    ('SUMMER25', 25.00, 'percentage', NOW() + INTERVAL '90 days', TRUE),
    ('FESTIVE30', 30.00, 'percentage', NOW() + INTERVAL '60 days', TRUE),
    ('WINTER15', 15.00, 'percentage', NOW() + INTERVAL '120 days', TRUE),
    ('STUDENT40', 40.00, 'percentage', NOW() + INTERVAL '180 days', TRUE),
    ('LOYALTY10', 10.00, 'percentage', NOW() + INTERVAL '365 days', TRUE),
    
    -- Fixed amount discounts
    ('SAVE50', 50.00, 'amount', NOW() + INTERVAL '30 days', TRUE),
    ('SAVE100', 100.00, 'amount', NOW() + INTERVAL '45 days', TRUE),
    ('SAVE200', 200.00, 'amount', NOW() + INTERVAL '7 days', TRUE),
    ('SAVE500', 500.00, 'amount', NOW() + INTERVAL '14 days', TRUE),
    ('BONUS300', 300.00, 'amount', NOW() + INTERVAL '60 days', TRUE),
    
    -- Limited time offers
    ('FLASH20', 20.00, 'percentage', NOW() + INTERVAL '1 day', TRUE),
    ('TODAY50', 50.00, 'amount', NOW() + INTERVAL '12 hours', TRUE),
    
    -- Expired coupons (for testing expired logic)
    ('EXPIRED10', 10.00, 'percentage', NOW() - INTERVAL '7 days', FALSE),
    ('EXPIRED200', 200.00, 'amount', NOW() - INTERVAL '30 days', FALSE)
ON CONFLICT (code) DO NOTHING;

-- Verify the insertion
SELECT code, discount_value, discount_type, expiry_date, is_active
FROM public.coupons
ORDER BY created_at DESC;
