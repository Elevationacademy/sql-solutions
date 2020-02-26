SELECT
  store_id,
  YEAR(return_date) AS 'year',
  SUM(quantity) as 'total_returns'
FROM Returns
WHERE YEAR(return_date) IN (2017, 2018)
GROUP BY
  store_id,
  YEAR(return_date)
HAVING SUM(quantity) > 300
ORDER BY YEAR(return_date) DESC

-- Notes
/*
- Technically we're only interested in grouping by store_id, but we still add YEAR(return_date) to our GROUP BY clause
    - Remember that because we added YEAR(return_date) to the SELECT, we *had* to add it to the GROUP BY as well
    - This is because now our entire result is being displayed in groups, so we cannot display individual years anymore, only groups of years
*/

-- Here is how you could build this "in parts":

-- 1. Total returns by store

SELECT store_id, SUM(quantity) as 'total_returns'
FROM Returns
GROUP BY store_id

-- 2. Filter on years 2017, 2018
SELECT store_id, SUM(quantity) as 'total_returns'
FROM Returns
WHERE YEAR(return_date) IN (2017, 2018)
GROUP BY store_id

-- 3. Only 300 returns or more (filtering on groups)
SELECT store_id, SUM(quantity) as 'total_returns'
FROM Returns
WHERE YEAR(return_date) IN (2017, 2018)
GROUP BY store_id
HAVING SUM(quantity) > 300

-- 4. Order by year
SELECT store_id, SUM(quantity) as 'total_returns'
FROM Returns
WHERE YEAR(return_date) IN (2017, 2018)
GROUP BY store_id
HAVING SUM(quantity) > 300
ORDER BY YEAR(return_date) DESC