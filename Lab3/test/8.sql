--What are the nations of the customers that made orders in December 1994? Print every nation onlyonce and sort them in alphabetical order.
.headers on
SELECT DISTINCT n_name
FROM nation, orders, customer
WHERE n_nationkey = c_nationkey
AND c_custkey = o_custkey
AND strftime('%Y-%m', o_orderdate) = '1994-12'
ORDER BY n_name ASC;

