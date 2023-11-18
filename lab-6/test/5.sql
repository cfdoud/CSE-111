--Find the number of customers who had at most three orders in November 1995 (o orderdate).
.headers on
SELECT COUNT(DISTINCT c_custkey) AS "customer_cnt"
FROM customer c
WHERE (
    SELECT COUNT(DISTINCT o_orderkey)
    FROM orders o
    WHERE o.o_custkey = c.c_custkey
      AND o.o_orderdate >= '1995-11-01'
      AND o.o_orderdate < '1995-12-01') <= 3;


