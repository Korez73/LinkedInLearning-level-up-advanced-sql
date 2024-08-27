SELECT e.employeeId, e.firstName 'Employee First name', e.lastName 'Employee Last Name', COUNT(s.salesId)
FROM employee e
  LEFT JOIN sales s ON e.employeeId = s.employeeId
WHERE e.title = 'Sales Person'
GROUP BY e.employeeId, e.firstName, e.lastName
HAVING COUNT(s.salesId) = 0
ORDER BY 4