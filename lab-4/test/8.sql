--How many different order clerks did the suppliers in PERU work with?
.headers on
SELECT COUNT(DISTINCT o_clerk) as 'clerks'
FROM supplier, orders, nation
WHERE o_orderkey = s_suppkey 
AND s_nationkey = n_nationkey
AND n_name = 'PERU';

