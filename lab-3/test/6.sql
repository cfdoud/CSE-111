--Find the total account balance of the suppliers from every nation. Print the nation name and the totalaccount balance
.headers on
SELECT n_name as n_name, SUM(s_acctbal) 
AS 'total_acct_bal'
FROM supplier, nation 
WHERE s_nationkey = n_nationkey 
GROUP BY n_name;

