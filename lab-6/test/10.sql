--Find the nation(s) having customers that spend the largest amount of money (o totalprice).
.headers on
SELECT n_name as 'country'
FROM 
    nation, customer, orders
WHERE
    n_nationkey = c_nationkey
    AND c_custkey = o_custkey
GROUP BY n_name
ORDER BY SUM(o_totalprice) DESC;
