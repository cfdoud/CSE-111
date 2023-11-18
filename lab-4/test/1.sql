-- How many orders are posted by customers in every country in EUROPE?
.headers on
SELECT n_name as  'Country', count(*) as 'CNT'
FROM nation, customer, orders, region
WHERE o_custkey = c_custkey
AND c_nationkey = n_nationkey
AND n_regionkey = r_regionkey
AND r_name = 'EUROPE'
GROUP BY n_name;