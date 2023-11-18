--How many parts in a %BOX% container does every supplier from KENYA offer? Print the name of the supplier and the number of parts.
.headers on
SELECT s_name as 'supplier', count(*) as 'num_parts'
FROM part, supplier, partsupp
WHERE p_partkey = ps_partkey 
AND ps_suppkey = s_suppkey 
AND p_container LIKE '%BOX%' 
AND s_nationkey = (SELECT n_nationkey FROM nation WHERE n_name = 'KENYA')
GROUP BY s_name
ORDER BY num_parts DESC;

