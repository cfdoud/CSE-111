--Find the total account balance of all the customers from AMERICA in the FURNITURE market segment
.headers on
SELECT SUM(c_acctbal) AS tot_acct_bal
FROM customer, nation, region
WHERE c_nationkey = n_nationkey
AND n_nationkey = r_regionkey
AND r_name = 'AMERICA'
AND c_mktsegment = 'FURNITURE';

