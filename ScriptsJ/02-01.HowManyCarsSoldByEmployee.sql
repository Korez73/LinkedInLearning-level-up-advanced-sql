SELECT e.employeeId, e.firstName, e.lastName, COUNT(s.salesId) 'Cars Sold'
FROM employee e
LEFT JOIN sales s ON e.employeeId = s.employeeId
GROUP BY e.employeeId, e.firstName, e.lastName
ORDER BY 4 DESC