.headers on
--What is the minimum, maximum, and total account balance among the customers in the “FURNITURE” market segment?
SELECT MIN(c_acctbal), MAX(c_acctbal), SUM(c_acctbal) FROM customer WHERE c_mktsegment = 'FURNITURE';

