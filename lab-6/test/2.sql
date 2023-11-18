--Find how many distinct customers have at least one order supplied exclusively by suppliers from
--AFRICA
.headers on
SELECT COUNT(DISTINCT c_custkey) AS "customer_cnt"
FROM
    customer, orders, lineitem, supplier, nation, region
WHERE   
    c_custkey = o_custkey
    AND l_orderkey = o_orderkey
    AND l_suppkey = s_suppkey
    AND s_nationkey = n_nationkey
    AND n_regionkey = r_regionkey
    AND r_name = 'AFRICA';
