select contest_id, Round(Count(contest_id)*100/(SELECT COUNT(*) FROM Users), 2) as percentage 
from Register 
Group by contest_id
order by percentage desc, contest_id asc