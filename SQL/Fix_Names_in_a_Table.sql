Select user_id, Concat(Upper(Left(name, 1)), Lower(Substr(name, 2))) as name
from Users
order by user_id