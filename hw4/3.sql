

SELECT LastName, FirstName
FROM employee 
WHERE EmployeeID IN (SELECT EmployeeID FROM service WHERE PropertyID IN (SELECT PropertyID FROM property WHERE state = 'NY'));

SELECT DISTINCT e.FirstName, e.LastName
FROM employee e
INNER JOIN service s ON e.EmployeeID = s.EmployeeID
INNER JOIN property p ON s.PropertyID = p.PropertyID
WHERE p.state = 'NY';


Write an SQL statement to list the names of employees who have worked on a property
owned by a Corporation. Use a subquery.

E.
SELECT FirstName, LastName
FROM employee
WHERE EmployeeID IN (SELECT EmployeeID FROM service WHERE PropertyID IN (SELECT PropertyID FROM property WHERE OwnerID IN (SELECT OwnerID FROM owner WHERE OwnerType = "Corporation")))

F.
SELECT e.FirstName, e.LastName
FROM employee AS e
INNER JOIN service s ON e.EmployeeID = s.EmployeeID
INNER JOIN property p ON s.PropertyID = p.PropertyID
INNER JOIN owner o ON p.OwnerID = o.OwnerID
WHERE o.OwnerType = "Corporation"


SELECT *
FROM employee AS e
INNER JOIN service s ON e.EmployeeID = s.EmployeeID

G.
SELECT e.ExperienceLevel, SUM(s.HoursWorked)
FROM employee AS e
JOIN service s ON e.EmployeeID = s.EmployeeID
GROUP BY e.EmployeeID


H.
SELECT e.ExperienceLevel, SUM(s.HoursWorked)
FROM employee AS e
INNER JOIN service s ON e.EmployeeID = s.EmployeeID
GROUP BY e.ExperienceLevel


H.
SELECT e.*, s.*, SUM(s.HoursWorked)
FROM employee AS e
JOIN service s ON e.EmployeeID = s.EmployeeID
GROUP BY e.EmployeeID, e.ExperienceLevel
ORDER BY e.ExperienceLevel DESC






I. Write an SQL statement to show the sum of HoursWorked for each Type of OWNER but
exclude services of employees who have ExperienceLevel of Junior and exclude any
type with less than three members.


SELECT SUM(s.HoursWorked), o.OwnerType, e.ExperienceLevel
FROM employee AS e
JOIN service s ON e.EmployeeID = s.EmployeeID
JOIN property p ON s.propertyID = p.propertyID
JOIN owner o ON p.OwnerID = o.OwnerId
GROUP BY  o.OwnerType
HAVING e.ExperienceLevel != "Junior" AND COUNT(o.OwnerType) > 3


-- ORDER BY e.ExperienceLevel DESC

J. Write an SQL statement to insert yourself as an employee where your experience level
is Novice and EmployeeID is your studentID.

INSERT INTO employee (EmployeeID, LastName, FirstName, CellPhone, ExperienceLevel)
VALUES (3412, Jateassavapirom, Chitsanupong, "0948652697", "Senior");


K. Write an SQL statement to modify all EMPLOYEE rows with ExperienceLevel of Master
to SuperMaster.

UPDATE employee SET employee.ExperienceLevel = "SuperMaster" WHERE employee.ExperienceLevel = "Master"
SELECT * FROM employee;


UPDATE employee SET employee.ExperienceLevel = "Master" WHERE employee.ExperienceLevel = "SuperMaster";
SELECT * FROM employee;


L. Write an SQL statement to switch the values of ExperienceLevel so that all rows
currently having the value Junior will have the value Senior, and all rows currently having
the value Senior will have the value Junior.

SELECT * FROM employee;
UPDATE employee SET employee.ExperienceLevel = "Senior" WHERE employee.ExperienceLevel = "Junior";
SELECT * FROM employee;



UPDATE employee SET employee.ExperienceLevel = "Junior" WHERE employee.ExperienceLevel = "Senior";
SELECT * FROM employee;



UPDATE employee
SET employee.ExperienceLevel = (CASE employee.ExperienceLevel WHEN 'Junior' THEN
'Senior' ELSE 'Junior' END);


SELECT FirstName, LastName, CellPhone FROM employee WHERE employee.ExperienceLevel = “Master”;
SELECT FirstName, LastName, CellPhone FROM employee WHERE employee.ExperienceLevel = “Master” AND FirstName LIKE “J%”;
