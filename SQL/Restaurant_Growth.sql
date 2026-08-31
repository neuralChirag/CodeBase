Select visited_on,
(
    Select Sum(amount)
    from Customer
    where visited_on Between Date_sub(c.visited_on, Interval 6 Day) And c.visited_on
) as amount,
Round(
    (
        Select Sum(amount)/7
        from customer
        where visited_on Between Date_sub(c.visited_on, Interval 6 Day) and c.visited_on), 2
    ) as average_amount
from customer c
where visited_on >= (
    Select date_add(Min(visited_on), interval 6 day)
    from customer
)
Group by visited_on;