WITH revenue_by_month AS
(
    SELECT 
        MONTH(s.transaction_date) AS 'Month',
        SUM(s.quantity * p.product_retail_price) AS Total_Revenue
    FROM 
        Sales AS s JOIN Products AS p ON 
        s.product_id = p.product_id
    WHERE 
        YEAR(s.transaction_date) = 2018
    GROUP BY MONTH(s.transaction_date)
)

SELECT 
    Month, 
    FORMAT(Total_Revenue, 'C') AS 'Total Revenue', 
    FORMAT(SUM(Total_Revenue) OVER (ORDER BY Month), 'C') AS Cumulative_Revenue
FROM revenue_by_month