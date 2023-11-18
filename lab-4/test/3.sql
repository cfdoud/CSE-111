--Find the total price paid on orders by every customer from ARGENTINA in 1996. Print the customer name and the total price.
.headers on
SELECT c_name, SUM(o_totalprice) AS 'total_price'
FROM customer, orders, nation
WHERE c_nationkey = n_nationkey 
AND n_name = 'ARGENTINA' 
AND c_custkey = o_custkey
AND o_orderdate LIKE '1996%'
GROUP BY c_name
ORDER BY total_price DESC;

