--Find the number of suppliers from each of ARGENTINA and BRAZIL
.headers on
SELECT n_name as 'country', count(*) AS s_name
FROM nation, supplier
WHERE s_nationkey = n_nationkey
AND n_name IN ('ARGENTINA', 'BRAZIL')
GROUP BY n_name
ORDER BY n_name;

