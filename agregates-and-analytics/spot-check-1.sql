SELECT AVG(total_sqft) AS 'average_total_sqft', SUM(total_sqft) as 'overall_total_sqft'
FROM Stores
WHERE store_country = 'Mexico'