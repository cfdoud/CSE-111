--Find how many suppliers from PERU supply more than 40 different parts.
.headers on
SELECT COUNT(*) AS "suppliers_cnt"
FROM   
    supplier, nation, partsupp
WHERE 
    s_nationkey = n_nationkey
    AND 
    s_suppkey = ps_suppkey
    AND
    n_name = 'PERU'
GROUP BY
    s_suppkey
HAVING  
    COUNT(DISTINCT ps_partkey) > 40
ORDER BY    
    suppliers_cnt DESC
LIMIT 1;





