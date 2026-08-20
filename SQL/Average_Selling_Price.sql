Select p.product_id, Coalesce(Round(Sum(u.units*p.price)/Sum(units), 2), 0) average_price from prices p Left Join UnitsSold u
on u.product_id = p.product_id and u.purchase_date between start_date and end_date
group by p.product_id