SELECT 
    store_id, 
    SUM(quantity) AS 'Total Quantity Sold',
    ROW_NUMBER() OVER (ORDER BY SUM(quantity) DESC) AS 'Quantity Rank'
FROM Sales

GROUP BY store_id
ORDER BY 'Total Quantity Sold' DESC

OFFSET 10 ROWS
FETCH NEXT 3 ROWS ONLY