--Find the name of the suppliers from ASIA who have more than $5,000 on account balance. Print the supplier name and their account balance.
.headers on
SELECT s_name, s_acctbal
FROM supplier, nation, region
WHERE s_acctbal > 5000.00 
AND s_nationkey =  n_nationkey
AND n_nationkey = r_regionkey
AND r_name = 'ASIA';