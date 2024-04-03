-- A. Write an SQL statement to list LastName, FirstName, and CellPhone for all employees
-- having an experience level of Master.

SELECT e.FirstName, e.LastName, e.CellPhone, e.ExperienceLevel FROM Employee AS e
WHERE e.ExperienceLevel = "Master";

-- B. Write an SQL statement to list Name and CellPhone for all employees having an
-- experience level of Master and Name that begins with the letter J.
SELECT e.FirstName, e.LastName, e.CellPhone, e.ExperienceLevel FROM Employee AS e
WHERE e.ExperienceLevel = "Master" AND e.`FirstName` LIKE "J%";


-- C. Write an SQL statement to list the names of employees who have worked on a property
-- in New York. Use a subquery.
SELECT * FROM `Employee` AS E
WHERE E.`EmployeeID` IN (
    SELECT s.`EmployeeID` FROM `Service` AS s
        WHERE s.`PropertyID` IN (
            SELECT p.`PropertyID` FROM `Property` AS p
            WHERE p.`State` = "NY"
        )
)

-- D. Answer question C but use a join.
SELECT DISTINCT  e.`FirstName`, e.`LastName` FROM `Employee` AS e
JOIN `Service` AS s ON e.`EmployeeID` = s.`EmployeeID`
JOIN `Property` AS p ON s.`PropertyID` = p.`PropertyID`
WHERE p.`State` = "NY";


-- E. Write an SQL statement to list the names of employees who have worked on a property
-- owned by a Corporation. Use a subquery.
SELECT * FROM `Employee` AS e
WHERE e.`EmployeeID` IN (
    SELECT s.`EmployeeID` FROM `Service` AS s 
    WHERE s.`PropertyID` IN (
        SELECT p.`PropertyID` FROM `Property` AS p
        WHERE p.`OwnerID` IN (
            SELECT o.`OwnerID` FROM `Owner` AS o
            WHERE o.`OwnerType` = "Corporation"
        ) 
    )
)


-- F. Answer question E but use a join.
SELECT * FROM `Employee` AS e
JOIN `Service` AS s on e.`EmployeeID` = s.`EmployeeID`
JOIN `Property` AS p ON s.`PropertyID` = p.`PropertyID`
JOIN `Owner` AS o ON p.`OwnerID` = o.`OwnerID`
WHERE o.`OwnerType` = "Corporation"

-- SELECT * FROM `Service`;

-- G. Write an SQL statement to show the name and sum of hours worked for each employee.
SELECT e.*, SUM(s.`HoursWorked`) FROM `Employee` AS e
JOIN `Service` s ON e.EmployeeID = s.EmployeeID
GROUP BY e.EmployeeID


-- H. Write an SQL statement to show the sum of hours worked for each ExperienceLevel of
-- EMPLOYEE. Sort the results by ExperienceLevel in descending order.
SELECT SUM(s.`HoursWorked`) FROM Employee AS e
INNER JOIN Service AS s ON e.`EmployeeID` = s.`EmployeeID`
GROUP BY e.`ExperienceLevel`
ORDER BY SUM(s.`HoursWorked`) DESC;

-- I. Write an SQL statement to show the sum of HoursWorked for each Type of OWNER but
-- exclude services of employees who have ExperienceLevel of Junior and exclude any
SELECT SUM(s.`HoursWorked`),o.`OwnerType` FROM `Employee` AS e
JOIN Service AS s ON e.`EmployeeID` = s.`EmployeeID`
JOIN Property AS p ON s.`PropertyID` = p.`PropertyID`
JOIN Owner AS o ON p.`OwnerID` = o.`OwnerID`
GROUP BY o.OwnerType
HAVING COUNT(o.OwnerType) > 3;

-- J. Write an SQL statement to insert yourself as an employee where your experience level
-- is Novice and EmployeeID is your studentID.
-- INSERT INTO employee (EmployeeID, LastNam


CREATE TABLE TBL_SHIPPING ( 
    'order_id' INT REFERENCES TBL_ORDER(order_id) ON DELETE SET NULL, 
    'account_id' INT REFERENCES TBL_ACCOUNT(account_id) ON DELETE CASCADE,
    'status_id' TINYINT(l) REFERENCES TBL_ STATAS(status_id)
)

CREATE TABLE TEST (
    temp TEXT,
    temp2 TEXT
);