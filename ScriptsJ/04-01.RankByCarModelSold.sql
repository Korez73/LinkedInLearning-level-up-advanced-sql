SELECT e.firstName, e.LastName, m.model, i.colour, i.year, COUNT(m.model) AS 'Number Sold',
RANK() OVER (PARTITION BY e.employeeId ORDER BY COUNT(m.model) DESC) AS 'Sales Rank'
FROM Employee e
JOIN Sales s ON e.employeeId = s.employeeId
JOIN Inventory i ON s.inventoryId = i.inventoryId
JOIN Model m ON i.modelId = m.modelId
GROUP BY m.model
ORDER BY 2
