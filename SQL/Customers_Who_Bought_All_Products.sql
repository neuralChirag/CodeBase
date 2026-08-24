Select customer_id from Customer
group by customer_id
having Count(Distinct product_key) = (Select Count(*) from Product)