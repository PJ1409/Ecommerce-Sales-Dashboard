SET search_path TO ecom;

--KPI 1: Average Order value (AOV)

SELECT 
ROUND(SUM(total) / COUNT(DISTINCT Order_id), 2) AS Average_Order_Value
FROM ecom.orders
WHERE lower(trim(status)) = 'delivered';


