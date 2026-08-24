select Max(num) as num from (
    select num, Count(*) as cnt from MyNumbers
    Group by num
) t
where t.cnt = 1