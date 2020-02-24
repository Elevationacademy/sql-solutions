SELECT TOP 30 
    IIF(store_country = 'USA', 'USA', 'Abroad') AS location,
    store_city + ' - ' + CAST(region_id AS VARCHAR) AS store_region,
    total_sqft
FROM Stores
ORDER BY total_sqft

-- Notes
-- 1. Remember that you cannot concatenate directly if the types are different!