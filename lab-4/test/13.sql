--List the minimum total price of an order between any two regions, i.e., the suppliers are from one
--region and the customers are from the other region.
.headers on
SELECT r_name as 'supp_region', r_name as 'cust_region', min(o_totalprice) as 'min_price'
FROM region, supplier, customer, orders, lineitem, nation
WHERE s_nationkey = n_nationkey
AND n_regionkey = r_regionkey
AND r_name = 'supp_region'
AND c_nationkey = n_nationkey
AND n_regionkey = r_regionkey
AND r_name = 'cust_region'
AND s_suppkey = l_suppkey
AND o_orderkey = l_orderkey
AND c_custkey = o_custkey
GROUP BY supp_region, 'supp_region'
ORDER BY supp_region, cust_region;
