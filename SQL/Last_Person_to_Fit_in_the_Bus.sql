with ordered as (
    Select person_id, person_name, weight, turn
    from Queue
    order by turn
)
Select person_name from (
    Select person_name, Sum(weight) over (order by turn) as total_weight
    from ordered o
) t
where total_weight <= 1000
order by total_weight Desc
Limit 1