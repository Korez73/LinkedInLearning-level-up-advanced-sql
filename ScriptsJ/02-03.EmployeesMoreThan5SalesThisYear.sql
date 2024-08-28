SELECT emp.employeeId, 
    emp.firstName, 
    emp.lastName, 
    COUNT(sls.salesId) as 'Sales Count'
FROM employee emp
INNER JOIN sales sls 
    ON emp.employeeId = sls.employeeId 
    AND sls.soldDate >= '01/01/2010'--date('now','start of year')
GROUP BY emp.employeeId, emp.firstName, emp.lastName
HAVING COUNT(sls.salesId) >= 5
ORDER BY 4 DESC



