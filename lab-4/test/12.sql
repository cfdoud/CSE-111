--What is the maximum account balance for the suppliers in every region? Print only those regions for
--which the maximum balance is larger than 9000
.headers on
SELECT r_name AS 'region', MAX(s_acctbal) AS 'max_bal'
FROM region, supplier, nation
WHERE s_nationkey = n_nationkey
AND n_regionkey = r_regionkey
GROUP BY r_name
HAVING MAX(s_acctbal) > 9000
ORDER BY max_bal DESC;
