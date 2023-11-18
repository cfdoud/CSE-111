--How many line items are supplied by suppliers in ASIA for orders made by customers in KENYA?
.headers on
SELECT COUNT(*) AS "items"
FROM lineitem, region, nation, supplier, orders, customer
WHERE l_suppkey = s_suppkey
AND s_nationkey = n_nationkey
AND n_regionkey = r_regionkey
AND r_name = 'ASIA'
AND l_orderkey = o_orderkey
AND o_custkey = c_custkey
AND customer.c_nationkey = nation.n_nationkey
AND nation.n_name = 'KENYA';
