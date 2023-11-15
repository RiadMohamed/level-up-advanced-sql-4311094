select employee.employeeId, employee.firstName, employee.lastName,
count(*) as count
from employee
inner join sales on sales.employeeId = employee.employeeId
GROUP by employee.employeeId, employee.firstName, employee.lastName
order by count desc