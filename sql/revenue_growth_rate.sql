SET search_path TO ecom;

--KPI 4: Revenue_growth_rate--

 WITH Monthly AS (
    SELECT 
    DATE_TRUNC('month', created_at)::DATE AS sales_month,
    ROUND(SUM(total), 2) AS monthly_revenue
    FROM ecom.orders  
    WHERE LOWER(TRIM(status)) = 'delivered'
    GROUP BY DATE_TRUNC('month', created_at)
),
growth AS (
    SELECT 
    to_char(sales_month,'yyyy-mm') as order_month,
    sales_month, monthly_revenue,
    LAG(monthly_revenue) OVER (ORDER BY sales_month) AS previous_monthly_revenue
    from monthly
)
SELECT 
order_month, monthly_revenue, previous_monthly_revenue,
ROUND(
    CASE 
    WHEN previous_monthly_revenue IS NULL OR previous_monthly_revenue = 0 THEN NULL
    ELSE ((Monthly_revenue-previous_monthly_revenue)/NULLIF(previous_monthly_revenue, 0))*100.0 
    END, 2) AS Revenue_growth_percentage
    from growth;
    
