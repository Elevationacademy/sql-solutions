SELECT
  TOP 30 product_cost,
  product_weight,
  product_cost / product_weight AS cpw
FROM Products
ORDER BY cpw DESC