--Compute the change in the economic exchange for every country between 1996 and 1998. There should 
--be two columns in the output for every country: 1997 and 1998. Hint: use CASE to select the values
--in the result.
.headers on
SELECT
    n_name as 'country',
    SUM(CASE WHEN strftime('%Y', l_shipdate) = '1997' THEN -l_extendedprice * (1 - l_discount) ELSE 0 END) AS '1997',
    SUM(CASE WHEN strftime('%Y', l_shipdate) = '1998' THEN -l_extendedprice * (1 - l_discount) ELSE 0 END) AS '1998'
FROM
    customer, orders, lineitem, supplier, nation
WHERE
    c_custkey = o_custkey
    AND l_orderkey = o_orderkey
    AND l_suppkey = s_suppkey
    AND c_nationkey = s_nationkey
    AND (strftime('%Y', l_shipdate) = '1997' OR strftime('%Y', l_shipdate) = '1998')
GROUP BY n_name
ORDER BY n_name;
