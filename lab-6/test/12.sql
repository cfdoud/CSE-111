--Find how many parts are supplied by exactly one suppliers from UNITED STATES
.headers on
SELECT COUNT(*) as 'part_cnt'
FROM (
    SELECT p_partkey
    FROM part, supplier, partsupp, nation 
    WHERE 
        p_partkey = ps_partkey
        AND s_suppkey = ps_suppkey
        AND s_nationkey = n_nationkey
        AND n_name = 'UNITED STATES'
    GROUP BY p_partkey
    HAVING COUNT(DISTINCT s_suppkey) = 1
);


