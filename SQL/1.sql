SET search_path TO ecom;

SELECT table_name
FROM information_schema.tables
WHERE table_schema = 'ecom'
ORDER BY table_name;

select*
from customer_addresses;

select *
from customers;
