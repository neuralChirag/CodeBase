Select name from Employee where id in (
    Select managerId from Employee
    where managerId is not Null
    group by managerId
    having count(*)>4
)