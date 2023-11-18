--Find the number of suppliers that provided a discount of 10% for one of their line items. For every such supplier, print its name and the number of such discounted line items.
.headers on
SELECT s_name, COUNT(*) as discounted_items
from supplier, lineitem
where s_suppkey = l_suppkey 
and l_discount = 0.1
group by s_name, l_discount
order by s_name, l_discount;
