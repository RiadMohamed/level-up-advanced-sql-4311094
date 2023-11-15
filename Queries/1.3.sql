select cus.firstName, cus.lastName, cus.email, sls.salesAmount, sls.soldDate
from sales sls
FULL OUTER JOIN customer cus on sls.customerId = cus.customerId
order by sls.soldDate, cus.firstName