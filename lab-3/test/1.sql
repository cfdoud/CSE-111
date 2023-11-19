.headers on
--Find the number of line items that have l shipdate smaller than l commitdate;
SELECT COUNT(*) AS itm_cnt
FROM lineitem
WHERE l_shipdate < l_commitdate;