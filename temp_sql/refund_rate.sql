SET search_path TO ecom;

--KPI 2 : Refund rate--

with order_count as(
select count(distinct(order_id)) as total_orders 
from orders
where lower(trim(status))='delivered'
),
refund_orders as(
select count(distinct(r.refund_id)) as total_no_refunds
from refunds r join orders o ON
o.order_id=r.order_id
where r.status='succeeded' and 
lower(trim(o.status)) = 'delivered'
)
select oc.total_orders,ro.total_no_refunds,
round(ro.total_no_refunds*100.0/nullif(oc.total_orders,0),2) as refund_rate_pct
from order_count oc cross join refund_orders ro ;



