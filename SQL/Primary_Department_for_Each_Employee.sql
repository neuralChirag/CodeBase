Select employee_id, department_id
from Employee
where primary_flag = 'Y'
Union
Select employee_id, department_id
from Employee
group by employee_id
having Count(*) = 1