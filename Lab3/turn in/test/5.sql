--Find all the items with the returnflag not set to “Y” on the receipt date of September 22, 1995. Print l receiptdate, l returnflag, l extendedprice, and l tax for every line item
.headers on
SELECT l_receiptdate, l_returnflag, l_extendedprice, l_tax 
from lineitem 
WHERE l_returnflag <> 'Y' AND l_receiptdate = "1995-09-22";
