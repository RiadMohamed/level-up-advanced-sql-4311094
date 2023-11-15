select employee.employeeId, employee.firstName,
count(*) as NumberOfCarsSold
from employee
inner join sales on sales.employeeId = employee.employeeId
where sales.soldDate >= date('now', 'start of year')
group by employee.employeeId
having count(*) > 5