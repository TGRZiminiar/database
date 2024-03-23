1.
SELECT FirstName, LastName, CellPhone 
	FROM employee
    	WHERE ExperienceLevel = "Master";


2.
SELECT FirstName, LastName, CellPhone FROM employee
    WHERE ExperienceLevel LIKE "J%" AND 
        FirstName LIKE "%J" AND 
            LastName LIKE "%J";



3.
Write an SQL statement to list the names of employees who have worked on a property
in New York. Use a subquery.


SELECT LastName, FirstName
FROM employee 
WHERE EmployeeID IN (SELECT EmployeeID FROM service WHERE PropertyID IN (SELECT PropertyID FROM property WHERE state = 'NY'));



SELECT * FROM service AS s
INNER JOIN property AS P 
ON s.PropertyID = p.PropertyID
AND p.State = "NY";
