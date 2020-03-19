-- The CTE
WITH Sales_Ranks_By_Month AS
(  SELECT 
    product_id, 
    SUM(quantity) AS Total_Sold,
    MONTH(transaction_date) AS 'Month',
    DENSE_RANK() OVER (                        -- To get repeating ranks
        PARTITION BY MONTH(transaction_date)   -- To create month-groups 
        ORDER BY SUM(quantity) DESC) 
        AS Month_Rank

  FROM Sales
  WHERE YEAR(transaction_date) = 2018
  GROUP BY product_id, MONTH(transaction_date)
  HAVING SUM(quantity) > 50                    -- Filters the *groups* (the `quantity` aggregates)
)

-- The query on the CTE
SELECT product_name, Total_Sold, Month
FROM 
  Sales_Ranks_By_Month sr JOIN Products p 
  ON sr.product_id = p.product_id              -- Joins are your friend!
WHERE Month_Rank = 1                           -- Finding the *most* sold products per month

-- *Deep breath*