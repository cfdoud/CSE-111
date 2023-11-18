--Find the number of distinct orders completed in 1993 by the suppliers in every nation in AFRICA. An
--order status of F stands for complete. Print only those nations for which the number of orders is larger
--than 200
.headers on
SELECT n_name as 'country', COUNT(*) as 'cnt'
FROM nation, region, customer, orders, supplier
WHERE o_orderstatus = 'F'
AND o_custkey = s_suppkey
AND s_nationkey = n_nationkey
AND n_regionkey = r_regionkey
AND r_name = 'AFRICA'
AND o_orderdate LIKE '1993%'
GROUP BY n_name
HAVING COUNT(*) > 200;

