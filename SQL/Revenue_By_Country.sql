set search_path to ecom;

-- KPI 3: Revenue by country--

WITH normalized_customers AS (
    SELECT
    customer_id,
    CASE
    WHEN country IS NULL
    OR TRIM(country) = ''
    OR LOWER(TRIM(country))
    IN ('na', 'n/a', 'not available')
    THEN 'Not Provided'
    ELSE TRIM(country)
    END AS country
    FROM customers
),
country_revenue AS (
    SELECT
    c.country,
    SUM(o.total) AS gross_country_revenue
    FROM normalized_customers c
    JOIN orders o
    ON c.customer_id = o.customer_id
    WHERE LOWER(TRIM(o.status)) = 'delivered'
    AND LOWER(TRIM(o.payment_status)) != 'failed'
    GROUP BY c.country
)
SELECT
    country,
    ROUND(gross_country_revenue::numeric, 2)
    AS revenue_generated
FROM country_revenue
ORDER BY gross_country_revenue DESC;