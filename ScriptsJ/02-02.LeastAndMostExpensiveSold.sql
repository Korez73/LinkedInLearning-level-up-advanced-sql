SELECT emp.employeeId, 
    emp.firstName, 
    emp.lastName, 
    MIN(salesAmount) AS MinSalesAmount, 
    MAX(salesAmount) as MaxSalesAmount
FROM sales sls
INNER JOIN employee emp
    ON sls.employeeId = emp.employeeId
WHERE sls.soldDate >= '01/01/2023'
GROUP BY emp.employeeId, emp.firstName, emp.lastName