Basic Trend Comparison (Month-over-Month)
  
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


🔹 Question 2: Price Increase Flag
  
🧩 Question:

Extend the previous query: Add a column that flags whether the price increased compared to the previous month ('UP', 'DOWN', 'SAME').

  SELECT
  product_id,
  month,
  price,
  LAG(month,1)-price over(PARTITION BY product_id ORDER BY month) As previous_price,
  CASE 
    WHEN price > 150 THEN 'Up'
    WHEN price BETWEEN 100 AND 150 THEN 'Same'
    WHEN price < 100 THEN 'Down'
  END AS price_flag
FROM product_prices;


  
