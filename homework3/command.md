```
docker compose up -d mariadb
docker exec -it mdb mariadb -u root -p
123
```

CREATE DATABASE dream_home;
SHOW DATABASES;
USE dream_home;

# need to change from number to int 
# when want to do on mariadb

# Create Table
```
CREATE TABLE branch (branchNo varchar(50) DEFAULT NULL,street varchar(50) DEFAULT NULL,city varchar(50) DEFAULT NULL,postcode varchar(50) DEFAULT NULL);

CREATE TABLE client (ID int(11) DEFAULT NULL,clientNo varchar(50) DEFAULT NULL,fName varchar(30) DEFAULT NULL,lName varchar(30) DEFAULT NULL,telNo varchar(20) DEFAULT NULL,Street varchar(30) DEFAULT NULL,City varchar(30) DEFAULT NULL,PostCode varchar(10) DEFAULT NULL,email varchar(40) DEFAULT NULL,JoinedOn timestamp DEFAULT NULL,Region varchar(30) DEFAULT NULL,preType varchar(5) DEFAULT NULL,maxRent int(6) DEFAULT NULL);

CREATE TABLE propertyforrent (propertyNo varchar(50) DEFAULT NULL,street varchar(50) DEFAULT NULL,city varchar(50) DEFAULT NULL,postcode varchar(50) DEFAULT NULL,type varchar(50) DEFAULT NULL,rooms int(11) DEFAULT NULL,rent int(11) DEFAULT NULL,ownerNo varchar(50) DEFAULT NULL,staffNo varchar(50) DEFAULT NULL,branchNo varchar(50) DEFAULT NULL,picture varchar(40) DEFAULT NULL,floorPlan varchar(40) DEFAULT NULL);

CREATE TABLE staff (
    staffNo varchar(50) DEFAULT NULL,
    fName varchar(50) DEFAULT NULL,
    lName varchar(50) DEFAULT NULL,
    position varchar(50) DEFAULT NULL,
    sex varchar(50) DEFAULT NULL,
    DOB datetime DEFAULT NULL,
    salary int(11) DEFAULT NULL,
    branchNo varchar(50) DEFAULT NULL,
    Telephone varchar(16) DEFAULT NULL,
    Mobile varchar(16) DEFAULT NULL,
    Email varchar(50) DEFAULT NULL
);

CREATE TABLE viewing (ID int(11) DEFAULT NULL,clientID int(11) DEFAULT NULL,propertyNo varchar(10) DEFAULT NULL,viewDate timestamp DEFAULT NULL,viewHour int(4) DEFAULT NULL,Comments varchar(255) DEFAULT NULL,WishToRent int(1) DEFAULT NULL);
```




# Insert data to table
```
INSERT INTO branch VALUES ('B002', '56 Cover Drive', 'London', 'NW10 6EU');
INSERT INTO branch VALUES ('B003', '163 Main Street', 'Glasgow', 'G11 9QX');
INSERT INTO branch VALUES ('B004', '32 Manse Road', 'Bristol', 'BS99 1NZ');
INSERT INTO branch VALUES ('B005', '22 Deer Road', 'London', 'SW1 4EH');
INSERT INTO branch VALUES ('B007', '16 Argyll Street', 'Aberdeen', 'AB2 3SU');


INSERT INTO client VALUES (2, 'CR56', 'Fred', 'Flintstone', '555 1234', '12 Rock Way', 'Bedrock', 'BD3 8RK', 'fred@flintyrock.com', '2004-05-09 12:00:00', NULL, 'House', 450);
INSERT INTO client VALUES (6, 'CR62', 'Wilma', 'Flintstone', '555 1234', '12 Rock Way', 'Bedrock', 'BD3 8RK', 'wilma@flintyrock.com', '2004-05-09 12:00:00', NULL, 'Flat', 350);
INSERT INTO client VALUES (7, 'CR74', 'Albert', 'Johnstone', '555 6677', '1 Way St.', 'Chicago', 'PO34 5FB', 'albie@johnstone.com', '2004-05-09 12:00:00', NULL, 'Flat', 450);
INSERT INTO client VALUES (9, 'CR77', 'Clark', 'Kent', '555 9999', '1 Super Way', 'Smallville', 'SM4 2ME', 'clark@supersite.com', '2004-05-09 12:00:00', NULL, 'Flat', 400);
INSERT INTO client VALUES (10, 'CR79', 'Joe', 'Bloggs', '123 4567', '5 High St', 'Paisley', 'PA2 2BB', 'joe@paisley.com', '2004-05-10 12:00:00', 'London (North West)', 'House', 450);
INSERT INTO client VALUES (12, 'CR83', 'Edward', 'Scissorhands', '123 4567', '1 Snip St.', 'Scissorland', 'SC1 2XX', 'eddie@scix.com', '2004-05-21 12:00:00', NULL, 'House', 300);
INSERT INTO client VALUES (17, NULL, 'Albert', 'Einstein', '555 6789', '12 Long Island Way', 'New Jersey', 'NJ44 2RD', 'bert@nuclearintent.com', '2004-05-21 12:00:00', 'London (North West)', NULL, 450);
INSERT INTO client VALUES (18, NULL, 'Snorrie', 'Sturrluson', '333 4567', '1 Vik Way', 'Rekjavik', 'RK22 3RD', 'snorrie@iceland.com', '2004-05-21 12:00:00', NULL, NULL, 400);
INSERT INTO client VALUES (19, NULL, 'Ferdinand', 'Oblogiotta', '123 5555', '12 Strumpetwise Street', 'Lagrange Orage', 'PP2 1BB', 'ferdy@orage.com', '2004-05-31 12:00:00', NULL, 'House', 450);
INSERT INTO client VALUES (20, NULL, 'Joe', 'Schmoe', '123 45678', '1 High St', 'Largs', 'KA30 9DD', 'joes@largy.com', '2004-05-31 12:00:00', NULL, 'House', 550);
INSERT INTO client VALUES (21, NULL, 'Bill', 'Gates', '123 5555', '1 Rich Street', 'Seattle', 'SE2 TTL', 'bill@gatesland.com', '2004-06-01 12:00:00', 'London (South)', 'House', 1000);
INSERT INTO client VALUES (24, NULL, 'Bruce', 'Wayne', '555 6789', '1 Wayne Manor', 'Gotham', 'BA01 TT0', 'wayne@batty.com', '2004-11-22 12:00:00', 'Glasgow', 'House', 900);


INSERT INTO propertyforrent VALUES ('PA14', '16 Holhead', 'Aberdeen', 'AB7 5SU', 'House', 6, 650, 'CO46', 'SA9', 'B007', 'images/house2.jpg', 'images/plan1.jpg');
INSERT INTO propertyforrent VALUES ('PG16', '5 Novar Drive', 'Glasgow', 'G12 9AX', 'Flat', 4, 450, 'CO93', 'SG14', 'B003', 'images/house3.jpg', 'images/plan1.jpg');
INSERT INTO propertyforrent VALUES ('PG21', '18 Dale Road', 'Glasgow', 'G12', 'House', 5, 600, 'CO87', 'SG37', 'B003', 'images/house4.jpg', 'images/plan1.jpg');
INSERT INTO propertyforrent VALUES ('PG36', '2 Manor Road', 'Glasgow', 'G32 4QX', 'Flat', 3, 375, 'CO93', 'SG37', 'B003', 'images/house5.jpg', 'images/plan1.jpg');
INSERT INTO propertyforrent VALUES ('PG4', '6 Lawrence Street', 'Glasgow', 'G11 9QX', 'Flat', 3, 350, 'CO40', 'SA9', 'B003', 'images/house2.jpg', 'images/plan1.jpg');
INSERT INTO propertyforrent VALUES ('PG97', 'Muir Drive', 'Aberdeen', 'AB42 1DD', 'House', 3, 380, 'CO46', 'SA9', 'B007', 'images/house1.jpg', 'images/plan1.jpg');
INSERT INTO propertyforrent VALUES ('PL94', '6 Argyll Street', 'London', 'NW2', 'Flat', 4, 400, 'CO87', 'SL41', 'B005', 'images/house3.jpg', 'images/plan1.jpg');


INSERT INTO staff VALUES ('SA9', 'Mary', 'Howe', 'Assistant', 'F', '1970-02-19 00:00:00', 9000, 'B007', '1338', '079555 12345', 'MaryHowe@Dreamhome.co.uk');
INSERT INTO staff VALUES ('SG14', 'David', 'Ford', 'Supervisor', 'M', '1958-03-24 00:00:00', 18000, 'B003', '0223', '079555 12344', 'DavidFord@Dreamhome.co.uk');
INSERT INTO staff VALUES ('SG37', 'Ann', 'Beech', 'Assistant', 'F', '1960-11-10 00:00:00', 12000, 'B003', '0224', '079555 12346', 'AnnBeech@Dreamhome.co.uk');
INSERT INTO staff VALUES ('SG5', 'Susan', 'Brand', 'Manager', 'F', '1940-06-03 00:00:00', 24000, 'B003', '0225', '079555 12347', 'SusanBrand@Dreamhome.co.uk');
INSERT INTO staff VALUES ('SL21', 'John', 'White', 'Manager', 'M', '1945-10-01 00:00:00', 30000, 'B005', '1512', '090555 12345', 'JohnWhite@Dreamhome.co.uk');
INSERT INTO staff VALUES ('SL41', 'Julie', 'Lee', 'Assistant', 'F', '1965-06-13 00:00:00', 9000, 'B005', '1514', '090555 12346', 'JulieLee@Dreamhome.co.uk');


INSERT INTO viewing VALUES (2, 2, 'PA14', '2004-07-01 12:00:00', 11, NULL, 0);
INSERT INTO viewing VALUES (3, 7, 'PG36', '2004-07-01 12:00:00', 12, NULL, 0);
INSERT INTO viewing VALUES (4, 9, 'PG4', '2004-07-01 12:00:00', 12, 'Tidy but too small', 0);
INSERT INTO viewing VALUES (5, 10, 'PA14', '2004-07-02 12:00:00', 10, NULL, 0);
INSERT INTO viewing VALUES (6, 12, 'PG4', '2004-07-02 12:00:00', 14, NULL, 0);
INSERT INTO viewing VALUES (7, 6, 'PA14', '2004-06-20 12:00:00', 12, NULL, 0);
INSERT INTO viewing VALUES (8, 6, 'PG21', '2004-06-21 12:00:00', 13, NULL, 0);
INSERT INTO viewing VALUES (11, 6, 'PA14', '2004-06-20 12:00:00', 12, NULL, 0);
INSERT INTO viewing VALUES (12, 9, 'PG21', '2004-11-22 12:00:00', 9, 'Not bad at all.', 0);
INSERT INTO viewing VALUES (13, 9, 'PG36', '2004-11-23 12:00:00', 9, 'Kitchen too small.', 0);
INSERT INTO viewing VALUES (14, 9, 'PG16', '2004-11-23 12:00:00', 9, NULL, 0);
INSERT INTO viewing VALUES (15, 24, 'PG21', '2004-11-25 12:00:00', 11, NULL, 0);


```



# Ex 6.1
SELECT staffNo, fName, lName, position, sex, DOB, salary, branchNo FROM staff;


# Ex 6.2
SELECT staffNo, fName, lName, salary FROM staff;


# Ex 6.3
SELECT DISTINCT propertyNo FROM viewing;


# Ex 6.4
SELECT staffNo, fName, lName, salary/12
FROM staff;


# Ex 6.5
SELECT staffNo, fName, lName, position, salary
FROM staff
WHERE salary > 10000;

# Ex 6.6
SELECT *
FROM branch AS b
WHERE b.city = 'London' OR b.city = 'Glasgow';

select * from branch
where city = 'London' or city = 'Glasgow';


# Ex 6.7
SELECT staffNo, fName, lName, position, salary
FROM staff as s
WHERE s.salary BETWEEN 20000 AND 30000;

# Ex 6.8
SELECT staffNo, fName, lName, position
FROM staff as s
WHERE s.position IN ("Manager", "Supervisor");

# Ex 6.9
SELECT branchNo, street, city, postcode
FROM branch as b
WHERE b.city LIKE'%Glasgow%';

# Ex 6.10
SELECT clientID, viewDate
FROM viewing as v
WHERE v.propertyNo = 'PG4' AND
comments IS NULL;


# Ex 6.11
SELECT staffNo, fName, lName, salary
FROM staff as s
ORDER BY s.salary DESC;

# Ex 6.12
SELECT propertyNo, type, rooms, rent
FROM propertyforrent
ORDER BY type;

# Ex 6.13
SELECT COUNT(*) AS myCount
FROM propertyforrent as p
WHERE p.rent > 350;

# Ex 6.14
SELECT COUNT(DISTINCT propertyNo) AS myCount
FROM viewing as v
WHERE v.viewDate BETWEEN'2004-05-01' 
AND'2004-05-31';

# Ex 6.15
SELECT COUNT(staffNo) AS myCount,
SUM(salary) AS mySum
FROM staff as s
WHERE s.position = 'Manager';


# Ex 6.16
SELECT MIN(salary) AS myMin,
MAX(salary) AS myMax,
AVG(salary) AS myAvg
FROM staff;

# Ex 6.17
SELECT branchNo,
COUNT(staffNo) AS myCount,
SUM(salary) AS mySum
FROM staff
GROUP BY branchNo
ORDER BY branchNo;

# Ex 6.18
SELECT branchNo,
COUNT(staffNo) AS myCount,
SUM(salary) AS mySum
FROM staff
GROUP BY branchNo
HAVING COUNT(staffNo) > 1
ORDER BY branchNo;


# Ex 6.19
SELECT staffNo, fName, lName, position
FROM staff as s
WHERE s.branchNo =
(SELECT branchNo
FROM branch as b
WHERE b.street = '163 Main St');


# Ex 6.20
SELECT staffNo, fName, lName, position,
salary - (SELECT AVG(salary) FROM staff) As SalDiff
FROM staff as s
WHERE s.salary > (SELECT AVG(salary) FROM staff);

# Ex 6.21
SELECT propertyNo, street, city, postcode, type, rooms, rent
FROM propertyforrent as p
WHERE p.staffNo IN
(SELECT staffNo
FROM staff as s
WHERE s.branchNo =
(SELECT branchNo
FROM branch as b
WHERE b.street = '163 Main St'));

# Ex 6.22
ดึงข้อมูลเกี่ยวกับพนักงานที่มีเงินเดือนสูงกว่าเงินเดือนของพนักงานอย่างน้อยหนึ่งคนในสาขา 'B003'
SELECT staffNo, fName, lName, position, salary, branchNo
FROM staff as s
WHERE s.salary > SOME
(SELECT salary
FROM staff as ss
WHERE ss.branchNo = 'B003');

# Ex 6.23
SELECT staffNo, fName, lName, position, salary
FROM staff as s
WHERE s.salary > ALL
(SELECT salary
FROM staff as ss
WHERE ss.branchNo = 'B003');

# Ex 6.24
SELECT clientNo, fName, lName,
propertyNo, comments
FROM client as c, viewing as v
WHERE c.ID = v.clientID;

# Ex 6.25
SELECT s.branchNo, s.staffNo, fName, lName,
propertyNo
FROM staff as s, propertyforrent as p
WHERE s.staffNo = p.staffNo
ORDER BY s.branchNo, s.staffNo, propertyNo;

# Ex 6.26
SELECT b.branchNo, b.city, s.staffNo, fName, lName,
propertyNo
FROM branch as b, staff as s, propertyforrent as p
WHERE b.branchNo = s.branchNo AND
s.staffNo = p.staffNo
ORDER BY b.branchNo, s.staffNo, propertyNo;

# Ex 6.27
SELECT s.branchNo, s.staffNo, COUNT(*) AS myCount
FROM staff as s, propertyforrent as p
WHERE s.staffNo = p.staffNo
GROUP BY s.branchNo, s.staffNo
ORDER BY s.branchNo, s.staffNo;

# Ex 6.28
SELECT b.*, p.
*
FROM branch as b 
LEFT JOIN propertyforrent as p 
ON b.City = p.City;

# Ex 6.29
SELECT b.*, p.*
FROM branch AS b RIGHT JOIN
propertyforrent AS p ON b.City = p.City;

# Ex 6.30
SELECT *
FROM branch AS b LEFT JOIN
propertyforrent AS p ON b.city = p.city

UNION

SELECT *
FROM branch AS b RIGHT JOIN
propertyforrent AS p ON b.city = p.city

# Ex 6.31
SELECT staffNo, fName, lName, position
FROM staff AS s
WHERE EXISTS
(SELECT *
FROM branch as b
WHERE s.branchNo = b.branchNo AND
city = 'London');

# Ex 6.32
(SELECT city
FROM branch as b
WHERE b.city IS NOT NULL) UNION
(SELECT city
FROM propertyforrent as p
WHERE p.city IS NOT NULL);

# Ex 6.33
(SELECT city FROM branch)
INTERSECT
(SELECT city FROM propertyforrent);

# Ex 6.34
SELECT city FROM branch
EXCEPT
SELECT city FROM propertyforrent;


# Ex 6.35
INSERT INTO staff
VALUES (
    'SG16', 
    'Alan', 
    'Brown',
    'Assistant',
    'M',
    '1957-05-25',
    8300,
    'B003',
    '0948652696',
    '0948652696',
    'mix@gmail.com'
);

# Ex 6.36
INSERT INTO staff (staffNo, fName, lName,
position, salary, branchNo)
VALUES ('SG44', 'Anne', 'Jones',
'Assistant', 8100, 'B003');

# Ex 6.37
CREATE TABLE staffpropcount (
    staffNo VARCHAR(255),
    fName VARCHAR(255),
    lName VARCHAR(255),
    propCnt INT
);

INSERT INTO staffpropcount
(SELECT s.staffNo, fName, lName, COUNT(*)
FROM staff as s, propertyforrent p
WHERE s.staffNo = p.staffNo
GROUP BY s.staffNo, fName, lName)
UNION
(SELECT staffNo, fName, lName, 0
FROM staff
WHERE staffNo NOT IN
(SELECT DISTINCT staffNo
FROM propertyforrent));

## This way more efficient
### Above too many action waste time and resource 
### R U Real Teacher?
INSERT INTO staffpropcount
(SELECT s.staffNo, s.fName, s.lName, COUNT(p.staffNo)
FROM staff as s LEFT JOIN
propertyforrent AS p on s.staffNo = p.staffNo
GROUP BY s.staffNo, fName, lName
);

# Ex 6.38
SELECT staffNo, salary FROM staff;
UPDATE staff as s
SET s.salary = s.salary*1.03;
SELECT staffNo, salary FROM staff;

# Ex 6.39
SELECT staffNo, salary, position FROM staff as s where s.position = 'Manager';
UPDATE staff as s
SET s.salary = s.salary*1.05
WHERE s.position = 'Manager';
SELECT staffNo, salary, position FROM staff as s where s.position = 'Manager';

# Ex 6.40
SELECT staffNo, position, salary 
FROM staff AS s 
WHERE s.staffNo = 'SG14';

UPDATE staff AS s
SET s.position = 'Manager', s.salary = 18000
WHERE staffNo = 'SG14';

SELECT staffNo, position, salary 
FROM staff AS s 
WHERE s.staffNo = 'SG14';

# Ex 6.41


# Ex 6.42
SELECT propertyNo 
FROM viewing AS v
WHERE propertyNo = 'PG4';

DELETE FROM viewing
WHERE propertyNo = "PG4";

SELECT propertyNo 
FROM viewing AS v
WHERE propertyNo = 'PG4';
# Ex 6.44


# Ex 6.45


