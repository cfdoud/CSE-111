--Find the total quantity (l quantity) of line items shipped per month (l shipdate) in 1997. Hint: check function strftime to extract the month/year from a date.
.headers on
SELECT strftime('%m', l_shipdate) AS month, SUM(l_quantity) AS 'tot_month'
FROM lineitem
WHERE strftime('%Y', l_shipdate) = '1997'
GROUP BY month
ORDER BY month;
