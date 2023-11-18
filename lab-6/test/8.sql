--Find how many suppliers have less than 50 distinct orders from customers in EGYPT and JORDAN together.
.headers on
SELECT COUNT(DISTINCT s_suppkey) AS 'supplier_cnt'
FROM 
    supplier, nation, customer, orders
WHERE
    s_nationkey = n_nationkey
    AND c_nationkey = n_nationkey
    AND c_custkey = o_custkey
    AND n_name IN ('EGYPT', 'JORDAN')
GROUP BY s_suppkey
HAVING COUNT(DISTINCT o_orderkey) < 50
ORDER BY COUNT(DISTINCT s_suppkey) DESC;

