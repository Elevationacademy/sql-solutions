SELECT *
FROM Returns
WHERE return_date BETWEEN '2018-09-10' AND '2018-09-12'
  AND (
    product_id LIKE '4%' OR
    store_id IN (21, 3, 8)
  )
-- remember, SQL doesn't reall care how you break the lines
-- it's more about what's readable for you and your team