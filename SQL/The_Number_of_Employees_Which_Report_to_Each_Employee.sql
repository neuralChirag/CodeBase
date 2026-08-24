Select e2.employee_id, e2.name, Count(*) as reports_count, Round(AVG(e1.age)) as average_age
from Employees e1 Join Employees e2
on e1.reports_to = e2.employee_id
Group by e2.employee_id, e2.name
order by e2.employee_id