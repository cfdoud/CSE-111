--Find the number of orders having status F. Group these orders based on the region of the customer who posted the order. Print the region name and the number of status F orders.
.headers on
SELECT r_name, o_orderstatus, COUNT(*) AS order_cnt
FROM orders, customer, region, nation
WHERE o_orderstatus = 'F' 
AND o_custkey = c_custkey 
AND c_nationkey = n_nationkey
AND n_regionkey = r_regionkey
GROUP BY r_name;
