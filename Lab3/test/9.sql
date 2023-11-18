--How many line items ordered by Customer#000000227 were received every month? Print the number of ordered line items corresponding to every (year, month) pair from l receiptdate.
.headers on
SELECT strftime('%Y-%m', l_receiptdate) AS year_month, 
COUNT(*) AS items
FROM lineitem, orders
WHERE l_receiptdate IS NOT NULL AND l_receiptdate != ''
AND o_custkey = 227
GROUP BY year_month
ORDER BY year_month;

