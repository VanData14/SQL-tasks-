Table: Product_prices
+------------+------------+--------+
| product_id |   month    | price  |
+------------+------------+--------+
| 101        | 2024-01-01 | 100.00 |
| 101        | 2024-02-01 | 110.00 |
| 101        | 2024-03-01 | 105.00 |
| 102        | 2024-01-01 | 200.00 |
| 102        | 2024-02-01 | 210.00 |
+------------+------------+--------+


🧩 Question:

Write a query to show each product's monthly price, the previous month’s price, and the difference from the previous month.

Solution: 
SELECT
  product_id,
  month,
  price,
  LAG(price, 1) OVER (PARTITION BY product_id ORDER BY month) AS previous_price,
  price - LAG(price, 1) OVER (PARTITION BY product_id ORDER BY month) AS price_diff
FROM product_prices;
