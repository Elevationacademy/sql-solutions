SELECT
  TOP 10 
  St.store_name,
  COUNT(Sa.transaction_id) as 'Total Transactions'
FROM
  Sales Sa,
  Stores St
WHERE SA.store_id = St.store_id
GROUP BY St.store_name
ORDER BY 'Total Transactions' DESC