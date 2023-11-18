--Find the supplier with the largest account balance in every region. Print the region name, the supplier
--name, and the account balance.
.headers on
SELECT r_name as 'region', s_name as 'supplier', MAX(s_acctbal)
FROM region, supplier, nation
WHERE r_regionkey = n_regionkey 
AND n_nationkey = s_nationkey
GROUP BY r_name
ORDER BY r_name;