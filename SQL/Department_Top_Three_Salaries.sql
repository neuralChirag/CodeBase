With ranked as (
    Select d.name as Department,
    e.name as Employee,
    e.salary as Salary,
    Dense_rank() Over (
        Partition by d.name
        order by e.salary desc
    ) as rnk
    From Employee e 
    Left Join Department d
    On e.departmentId = d.id
)

Select Department, Employee, Salary from ranked
where rnk <= 3