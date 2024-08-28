


with monthly AS (
  select strftime('%Y', soldDate) AS soldYear, 
    strftime('%m', soldDate) AS soldMonth,
    COUNT(*) countOfSales
  FROM sales
  GROUP BY soldYear, soldMonth
  ORDER BY soldYear, soldMonth
)
select soldYear, soldMonth, countOfSales,
LAG(countOfSales, 1, 'n/a') OVER (ORDER BY soldYear, soldMonth) AS previousMonthCount
FROM monthly