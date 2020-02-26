Select S.store_country, R.sales_region, S.store_city
FROM Regions R, Stores S
WHERE 
    R.region_id = S.region_id AND
    S.store_country = 'Mexico'
ORDER BY R.sales_region

-- Remember, the `WHERE` clause is just a filter, as always!