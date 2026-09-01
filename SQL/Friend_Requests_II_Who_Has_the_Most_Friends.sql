with ids as (
    Select requester_id as id from RequestAccepted
    union all
    select accepter_id as id from RequestAccepted
)

select id, count(*) as num from ids group by id order by num desc limit 1