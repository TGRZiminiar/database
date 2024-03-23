INSERT INTO Employee (FirstName, LastName, CellPhone, ExperienceLevel)
VALUES ('Sam', 'Smith', '206-254-1234', 'Master');

INSERT INTO Employee (FirstName, LastName, CellPhone, ExperienceLevel)
VALUES ('John', 'Evanston', '206-254-2345', 'Junior');

INSERT INTO Employee (FirstName, LastName, CellPhone, ExperienceLevel)
VALUES ('Dale', 'Murray', '206-254-3456', 'Senior');

INSERT INTO Employee (FirstName, LastName, CellPhone, ExperienceLevel)
VALUES ('Jerry', 'Murphy', '585-545-8765', 'Master');

INSERT INTO Employee (FirstName, LastName, CellPhone, ExperienceLevel)
VALUES ('Joan', 'Fontaine', '206-254-4567', 'Junior');



INSERT INTO Owner (OwnerName, OwnerEmail, OwnerType)
VALUES ('Mary Jones', 'Mary.Jones@somewhere.com', 'Individual');

INSERT INTO Owner (OwnerName, OwnerEmail, OwnerType)
VALUES ('DT Enterprises', 'DTE@dte.com', 'Corporation');

INSERT INTO Owner (OwnerName, OwnerEmail, OwnerType)
VALUES ('Sam Douglas', 'Sam.Douglas@somewhere.com', 'Individual');

INSERT INTO Owner (OwnerName, OwnerEmail, OwnerType)
VALUES ('UNY Enterprises', 'UNYE@unye.com', 'Corporation');

INSERT INTO Owner (OwnerName, OwnerEmail, OwnerType)
VALUES ('Doug Samuels', 'Doug.Samuels@somewhere.com', 'Individual');


INSERT INTO Property (PropertyID, PropertyName, Street, City, State, Zip, OwnerID)
VALUES (1, 'Eastlake Building', '123 Eastlake St', 'Seattle', 'WA', '98119', 2);

INSERT INTO Property (PropertyID, PropertyName, Street, City, State, Zip, OwnerID)
VALUES (2, 'Elm St Apts', '4 East Elm St', 'Lynwood', 'WA', '98223', 1);

INSERT INTO Property (PropertyID, PropertyName, Street, City, State, Zip, OwnerID)
VALUES (3, 'Jefferson Hill', '42 West 7th St', 'Bellevue', 'WA', '98007', 2);

INSERT INTO Property (PropertyID, PropertyName, Street, City, State, Zip, OwnerID)
VALUES (4, 'Lake View Apts', '1265 32nd Avenue', 'Redmond', 'WA', '98052', 3);

INSERT INTO Property (PropertyID, PropertyName, Street, City, State, Zip, OwnerID)
VALUES (5, 'Kodak Heights Apts', '65 32nd Avenue', 'Rochester', 'NY', '14604', 4);

INSERT INTO Property (PropertyID, PropertyName, Street, City, State, Zip, OwnerID)
VALUES (6, 'Private Residence', '1456 48th St', 'Bellevue', 'WA', '98007', 1);

INSERT INTO Property (PropertyID, PropertyName, Street, City, State, Zip, OwnerID)
VALUES (7, 'Private Residence', '1567 51st St', 'Bellevue', 'WA', '98007', 3);

INSERT INTO Property (PropertyID, PropertyName, Street, City, State, Zip, OwnerID)
VALUES (8, 'Private Residence', '567 151st St', 'Rochester', 'NY', '14604', 5);



INSERT INTO Service (PropertyID, EmployeeID, ServiceDate, HoursWorked)
VALUES (1, 2, '2012-05-05 00:00:00', 4.50);
INSERT INTO Service (PropertyID, EmployeeID, ServiceDate, HoursWorked)
VALUES (2, 2, '2012-05-08 00:00:00', 2.75);
INSERT INTO Service (PropertyID, EmployeeID, ServiceDate, HoursWorked)
VALUES (3, 3, '2012-05-08 00:00:00', 4.50);
INSERT INTO Service (PropertyID, EmployeeID, ServiceDate, HoursWorked)
VALUES (4, 1, '2012-05-19 00:00:00', 3.00);
INSERT INTO Service (PropertyID, EmployeeID, ServiceDate, HoursWorked)
VALUES (5, 4, '2012-05-12 00:00:00', 7.50);
INSERT INTO Service (PropertyID, EmployeeID, ServiceDate, HoursWorked)
VALUES (6, 5, '2012-05-10 00:00:00', 2.50);
INSERT INTO Service (PropertyID, EmployeeID, ServiceDate, HoursWorked)
VALUES (7, 2, '2012-05-19 00:00:00', 2.50);
INSERT INTO Service (PropertyID, EmployeeID, ServiceDate, HoursWorked)
VALUES (8, 4, '2012-05-15 00:00:00', 2.75);