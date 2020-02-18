SELECT *
FROM Products
WHERE
  product_brand = 'Gorilla' AND
    (product_cost < 1 OR
    recyclable = 'TRUE')
