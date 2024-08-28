WITH cte AS (
  SELECT s.employeeId, strftime('%m', s.soldDate) AS Month, SUM(s.salesAmount) AS Amount
  FROM sales s
  WHERE strftime('%Y', s.soldDate) = '2021'
  GROUP BY s.employeeId, strftime('%m', s.soldDate)
  ORDER BY s.employeeId
)
SELECT
  e.firstName, e.lastName, 
  SUM(CASE WHEN cte.Month = '01' THEN cte.Amount END) AS 'JanSales',
  SUM(CASE WHEN cte.Month = '02' THEN cte.Amount END) AS 'FebSales',
  SUM(CASE WHEN cte.Month = '03' THEN cte.Amount END) AS 'MarSales',
  SUM(CASE WHEN cte.Month = '04' THEN cte.Amount END) AS 'AprSales',
  SUM(CASE WHEN cte.Month = '05' THEN cte.Amount END) AS 'MaySales',
  SUM(CASE WHEN cte.Month = '06' THEN cte.Amount END) AS 'JunSales',
  SUM(CASE WHEN cte.Month = '07' THEN cte.Amount END) AS 'JulSales',
  SUM(CASE WHEN cte.Month = '08' THEN cte.Amount END) AS 'AugSales',
  SUM(CASE WHEN cte.Month = '09' THEN cte.Amount END) AS 'SepSales',
  SUM(CASE WHEN cte.Month = '10' THEN cte.Amount END) AS 'OctSales',
  SUM(CASE WHEN cte.Month = '11' THEN cte.Amount END) AS 'NovSales',
  SUM(CASE WHEN cte.Month = '12' THEN cte.Amount END) AS 'DecSales'
FROM cte
JOIN employee e ON cte.employeeId = e.employeeId
GROUP BY e.firstName, e.lastName
ORDER BY e.lastName