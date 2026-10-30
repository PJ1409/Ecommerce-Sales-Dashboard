SET search_path TO ecom;

--KPI 8: Total Revenue --

SELECT 
ROUND(SUM(total), 2) AS total_revenue
FROM ecom.orders
WHERE lower(trim(status)) = 'delivered';