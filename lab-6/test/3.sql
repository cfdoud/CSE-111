--Find the distinct parts (p name) ordered by customers from ASIA that are supplied by exactly 3 suppliers from AFRICA
.headers on
SELECT DISTINCT p_name AS 'part'
FROM part, lineitem, supplier, nation n1, region r1, customer, orders, nation n2, region r2
WHERE p_partkey = l_partkey
  AND l_suppkey = s_suppkey
  AND s_nationkey = n1.n_nationkey
  AND n1.n_regionkey = r1.r_regionkey
  AND o_orderkey = c_custkey
  AND c_nationkey = n2.n_nationkey
  AND n2.n_regionkey = r2.r_regionkey
  AND (r1.r_name = 'AFRICA' OR r2.r_name = 'ASIA')
GROUP BY p_name
HAVING COUNT(DISTINCT s_suppkey) = 3
ORDER BY 'part';


