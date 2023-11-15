select employee.employeeId, employee.firstName,
max(sales.salesAmount) as MostExp,
min(sales.salesAmount) as LeastExp
from employee
inner join sales on sales.employeeId = employee.employeeId
where sales.soldDate >= date('now', 'start of year')
group by employee.employeeId