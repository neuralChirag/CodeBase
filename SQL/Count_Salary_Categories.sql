Select 'Low Salary' as category,
        Count(case when income<20000 then 1 End) as accounts_count
from Accounts
Union
Select 'Average Salary' as category,
        Count(case when income between 20000 and 50000 then 1 end) as accounts_count
from Accounts
Union
Select 'High Salary' as category,
        Count(case when income>50000 then 1 end) as accounts_count
from Accounts