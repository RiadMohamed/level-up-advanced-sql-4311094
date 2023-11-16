with cte as (
  select strftime('%Y', soldDate) as soldYear, salesAmount
  from Sales
)
SELECT soldYear as Year, sum(salesAmount) as Annual_Sales
from cte 
group by soldYear
order by soldYear