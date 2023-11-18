--Find the number of orders posted by every customer from EGYPT in 1992
.headers on
SELECT c_name as 'customer' , count(o_orderkey) as 'cnt'
FROM customer, orders, nation
WHERE c_custkey = o_custkey 
AND c_nationkey = 21 AND o_orderdate LIKE '1992%'
GROUP BY c_name
ORDER BY orders DESC;