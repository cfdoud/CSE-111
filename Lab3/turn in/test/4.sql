--What is the name of the suppliers with an account balance larger than $8,000?
.headers on
SELECT s_name AS s_name 
FROM supplier 
WHERE s_acctbal > 8000.00;
