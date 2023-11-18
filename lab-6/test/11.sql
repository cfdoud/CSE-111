--Find the region where customers spend the largest amount of money (l extendedprice) buying items from suppliers in the same region.
.headers on
SELECT r_name as 'region'
FROM region, nation, supplier, customer, orders, lineitem
WHERE r_regionkey = n_regionkey
AND n_nationkey = s_nationkey
AND s_suppkey = l_suppkey
AND l_orderkey = o_orderkey
AND o_custkey = c_custkey
GROUP BY r_name
ORDER BY sum(l_extendedprice) DESC
LIMIT 1;
