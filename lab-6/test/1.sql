--Find the supplier-customer pair(s) with the most expensive (o totalprice) order(s) completed (F in
--o orderstatus). Print the supplier name, the customer name, and the total price.
.headers on
 SELECT s_name as 'supplier', c_name as 'customer', sum(o_totalprice) as 'total price'
 FROM
    supplier,
    customer,
    orders
WHERE
    s_suppkey = c_custkey
    AND o_custkey = c_custkey
    AND o_orderstatus = 'F'
GROUP BY
    s_name,
    c_name
ORDER BY    
    sum(o_totalprice) DESC;    

