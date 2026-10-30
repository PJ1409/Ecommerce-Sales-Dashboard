SET search_path TO ecom;

--KPI 5: Revenue_trend--

SELECT
TO_Char(DATE_TRUNC('month', created_at)::Date, 'yyyy-mm') AS month_wise,
ROUND(SUM(total),2) AS revenue
FROM ecom.orders
WHERE lower(trim(status)) = 'delivered'
GROUP BY DATE_TRUNC('month', created_at)::Date
ORDER BY month_wise;

