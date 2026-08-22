Select 
date_format(trans_date, '%Y-%m') as month, 
country, 
Count(*) as trans_count, 
Sum(state='approved') as approved_count, 
Sum(amount) as trans_total_amount, 
Sum(Case when state ='approved' then amount Else 0 end) as approved_total_amount 
from Transactions
Group by  
DATE_FORMAT(trans_date, '%Y-%m'), 
country;