WITH latest AS (
    SELECT product_id, MAX(change_date) AS latest_date
    FROM Products
    WHERE change_date < '2019-08-17'
    GROUP BY product_id
)
SELECT p.product_id,
       p.new_price AS price
FROM Products p
JOIN latest l
  ON p.product_id = l.product_id
 AND p.change_date = l.latest_date

UNION

SELECT DISTINCT product_id, 10
FROM Products
WHERE product_id NOT IN (
    SELECT product_id
    FROM Products
    WHERE change_date < '2019-08-17'
);