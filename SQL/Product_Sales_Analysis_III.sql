With FirstSale as (
    Select product_id, Min(year) as first_year from Sales group by product_id
)
Select f.product_id, f.first_year, s.quantity, s.price 
from FirstSale f Left Join Sales s
on f.product_id = s.product_id
where s.year = first_year