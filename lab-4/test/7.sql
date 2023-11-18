--How many orders do customers in every nation in AFRICA have in every status? Print the nation name,
--the order status, and the count
.headers on
SELECT n_name as 'country', o_orderstatus as 'status', COUNT(*) as 'count'
FROM orders, customer, nation, region
WHERE o_custkey = c_custkey 
AND c_nationkey = n_nationkey
AND n_regionkey = r_regionkey
AND r_name = 'AFRICA'
GROUP BY n_name, o_orderstatus
ORDER BY n_name, o_orderstatus;
