--Find how many 1-URGENT priority orders have been posted by customers from ROMANIA between 1993 and 1997, combined.
.headers on
SELECT SUM(o_orderpriority) as order_cnt
FROM orders, customer, nation
WHERE o_orderpriority = '1-URGENT' 
AND o_orderdate BETWEEN '1993-01-01' AND '1997-12-31' 
AND o_custkey = c_nationkey
AND n_name = 'ROMANIA';

