
SET search_path TO ecom;

--KPI 6: Top 5 Products by revenue--

SELECT
    p.product_id,
    p.product_name,
    ROUND(SUM(oi.line_total)::numeric, 2) AS revenue_generated
FROM orders o
JOIN order_items oi
    ON o.order_id = oi.order_id
JOIN product_variants pv
    ON pv.variant_id = oi.variant_id
JOIN products p
    ON p.product_id = pv.product_id
WHERE LOWER(TRIM(o.status)) = 'delivered'
  AND LOWER(TRIM(o.payment_status)) != 'failed'
GROUP BY
    p.product_id,
    p.product_name
ORDER BY revenue_generated DESC
LIMIT 5;