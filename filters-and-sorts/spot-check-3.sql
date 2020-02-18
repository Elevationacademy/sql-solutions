SELECT
  TOP 30 
  product_cost,
  product_weight,
  product_cost / product_weight AS cpw
FROM Products
ORDER BY cpw DESC -- the 'cpw' is the alias we just created!

-- notice that in this case we split the SELECT statement for readability
