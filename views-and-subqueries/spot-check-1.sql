SELECT product_id, SUM(quantity) AS 'Total Expensive Returns'
FROM Returns
WHERE product_id IN (
    SELECT product_id
    FROM Products
    WHERE product_retail_price > (
        SELECT AVG(product_retail_price)
        FROM Products
    )
)
GROUP BY product_id
ORDER BY SUM(quantity) DESC