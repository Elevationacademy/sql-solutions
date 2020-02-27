SELECT
  C.first_name + ' ' + C.last_name AS 'Customer',
  COUNT(S.transaction_date) AS 'Total Transactions'
FROM
  Customers C,
  Sales S
WHERE C.customer_id = S.customer_id
GROUP BY
  C.customer_id,
  C.first_name + ' ' + C.last_name
HAVING COUNT(S.transaction_date) > 250
ORDER BY 'Total Transactions' DESC

-- Notes
-- We are grouping by customer_id because we want to guarantee that we're not mixing up users by mistake
--  i.e., it's possible we have two "John Smith"s, but it's impossible for the ID to repeat