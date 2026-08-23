With FirstEvents as (
    Select player_id, Min(event_date) as  firstLogin from Activity
    Group by player_id
)
Select Round(Count(Distinct a1.player_id)/ Count(Distinct fe.player_id), 2) as fraction from
FirstEvents fe Left Join Activity a1
on fe.player_id = a1.player_id 
and Datediff(a1.event_date, fe.firstLogin) = 1