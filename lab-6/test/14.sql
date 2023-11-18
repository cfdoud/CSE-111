--Compute, for every country, the value of economic exchange, i.e., the difference between the number
--of items from suppliers in that country sold to customers in other countries and the number of items
--bought by local customers from foreign suppliers in 1997 (l shipdate)
.headers on
SELECT n_name as 'country', -sum(l_extendedprice * (1 - l_discount)) as 'economic exchange'
FROM customer, orders, lineitem, supplier, nation, region
WHERE c_custkey = o_custkey
AND l_orderkey = o_orderkey
AND l_suppkey = s_suppkey
AND c_nationkey = s_nationkey
AND s_nationkey = n_nationkey
AND n_regionkey = r_regionkey
AND r_name = 'EUROPE'
AND l_shipdate >= '1997-01-01'
AND l_shipdate <= '1997-12-31'
GROUP BY n_name
ORDER BY n_name;
