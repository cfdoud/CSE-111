--How many unique parts produced by every supplier in INDONESIA are ordered at every priority? 
--Print the supplier name, the order priority, and the number of parts
.headers on
SELECT s_name as 'supplier', o_orderpriority as 'priority', COUNT(DISTINCT ps_partkey) as Parts
FROM part, partsupp, supplier, orders, nation
WHERE p_partkey = ps_partkey 
AND ps_suppkey = s_suppkey 
AND s_nationkey = n_nationkey
AND n_name = 'INDONESIA'
AND o_orderkey = p_partkey
GROUP BY s_name, o_orderpriority
ORDER BY s_name, o_orderpriority;





















































