select user_id, Count(*) as followers_count
from Followers group by user_id
order by user_id