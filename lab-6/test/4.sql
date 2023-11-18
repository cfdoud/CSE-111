-- Find the nation(s) with the least developed industry, i.e., selling items totaling the smallest amount of money (l extendedprice) in 1994 (l shipdate).
.headers on
SELECT n_name AS 'country'
FROM nation, lineitem, orders, customer
WHERE n_nationkey = c_nationkey
  AND c_custkey = o_custkey
  AND o_orderkey = l_orderkey
  AND strftime('%Y', l_shipdate) = '1994'
GROUP BY n_name
ORDER BY SUM(l_extendedprice) ASC;


