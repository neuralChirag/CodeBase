select query_name, Round(AVG(rating/position), 2) as quality, Round(AVG(rating<3)*100, 2) as poor_query_percentage from Queries
Group by query_name