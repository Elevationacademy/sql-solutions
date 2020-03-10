SELECT 
    CAST(store_id AS VARCHAR) as 'Store', -- have to cast so that both first columns have the same data type
    SUM(quantity) AS 'Total Returns'
FROM Returns
GROUP BY store_id

UNION

SELECT 
    'Total: ', 
    SUM(quantity)   -- no need for aliasing since this will fall under the same column name as defined above
FROM Returns

ORDER BY 'Total Returns' -- applies to the entire union