--Find the nation(s) with the largest number of customers.
.headers on
SELECT n_name as 'country'
FROM customer, nation
WHERE c_nationkey = n_nationkey
GROUP BY n_name
ORDER BY COUNT(*) DESC

LIMIT 1;
