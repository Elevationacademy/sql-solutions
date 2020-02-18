SELECT *
FROM Products
WHERE
  product_brand = 'Gorilla' AND
    (product_cost < 1 OR
    recyclable = 'TRUE')
-- Note the importance of the parenthese in this case! 
-- Without parentheses here, the query would return 875 rows because the OR 'overrides' the AND condition
