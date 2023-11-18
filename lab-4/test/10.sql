--Find the minimum and maximum discount for every part having ECONOMY or COPPER in its type
.headers on
SELECT p_type as 'part_type', min(l_discount) as 'min_disc', max(l_discount) as 'max_disc'
FROM part, lineitem
WHERE p_partkey = l_partkey 
AND (p_type LIKE '%ECONOMY%' OR p_type LIKE '%COPPER%')
GROUP BY p_type
ORDER BY p_type;
