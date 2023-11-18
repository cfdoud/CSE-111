--Find the total number of line items on orders with priority 3-MEDIUM supplied by suppliers from ARGENTINA and BRAZIL. Group these line items based on the year of the order from o orderdate. Print the year and the count. Check the substr function in SQLite
.headers on
SELECT substr(o_orderdate, 1, 4) as year, SUM(l_orderkey) as itm_cnt
FROM lineitem, orders, supplier, nation
WHERE l_orderkey = o_orderkey 
AND o_orderpriority = '3-MEDIUM'
AND l_suppkey = s_suppkey 
AND s_nationkey = n_nationkey
AND (n_name = 'ARGENTINA' OR n_name = 'BRAZIL'; 