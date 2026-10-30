SET search_path TO ecom;

--KPI 7: Total Orders--

SELECT 
COUNT(DISTINCT(order_id)) AS Total_Orders 
FROM ecom.orders;
