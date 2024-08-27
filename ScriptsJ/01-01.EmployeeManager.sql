SELECT e.firstName 'Employee First Name', e.LastName 'Employee Last Name',
  m.firstName 'Manager First Name', m.lastName 'Manager Last Name'
FROM employee e
LEFT JOIN employee m ON e.managerId = m.employeeId
ORDER BY e.LastName