With rnk as(
    select *, 
    lag(num) over(order by id) as prev_num,
    lead(num) over(order by id) as next_num
    from Logs
)
Select Distinct num as consecutiveNums
from rnk
where num= prev_num and num= next_num