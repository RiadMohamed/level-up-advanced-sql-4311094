select e.firstName as Employee_FName, 
e.lastName as Employee_LName, 
m.firstName as Manager_FName, 
m.lastName as Manager_LName
from employee e
inner join employee m on e.managerId = m.employeeId