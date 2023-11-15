select e.firstName, e.lastName, e.title, s.salesId
from employee e
left join sales s on s.employeeId = e.employeeId
where s.salesId IS NULL and title = 'Sales Person'