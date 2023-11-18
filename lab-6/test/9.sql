--Find how many suppliers supply the least expensive part (p retailprice).
.headers on
SELECT COUNT(DISTINCT ps_suppkey) AS "supplier_cnt"
FROM partsupp 
WHERE ps_partkey IN (
    SELECT p_partkey
    FROM part p
    WHERE p_retailprice = (
        SELECT MIN(p_retailprice)
        FROM part
    )
);

    