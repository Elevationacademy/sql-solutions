SELECT
  birthdate,
  first_name + ' earns at least ' + 
    LEFT(yearly_income, CHARINDEX(' ', yearly_income)) 
    AS Description
FROM Customers
WHERE MONTH(birthdate) = 1

-- Notes --
-- 1. Remember that how you split your lines doesn't matter; it's for your readability
-- 2. There is at least one more way to solve this ;)