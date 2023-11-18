--How many distinct orders are between customers with negative account balance and suppliers with
--positive account balance?
.headers on
SELECT COUNT(DISTINCT o_orderkey) AS 'order_cnt'
FROM orders, customer, supplier
WHERE c_custkey = o_custkey 
AND o_orderkey = s_suppkey 
AND c_acctbal < 0 AND s_acctbal > 0;