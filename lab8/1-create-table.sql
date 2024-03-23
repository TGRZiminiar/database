-- Active: 1711223022258@@127.0.0.1@3306@lab
CREATE TABLE Employee (
    EmployeeID INT(11) NOT NULL AUTO_INCREMENT,
    FirstName VARCHAR(255) NOT NULL,
    LastName VARCHAR(255) NOT NULL,
    CellPhone VARCHAR(255) NOT NULL,
    ExperienceLevel VARCHAR(255) NOT NULL,
    PRIMARY KEY(EmployeeID)
);

CREATE TABLE Property (
    PropertyID INT(11) NOT NULL AUTO_INCREMENT,
    PropertyName varchar(255) NOT NULL,
    Street varchar(255) NOT NULL,
    City varchar(255) NOT NULL,
    State varchar(2) NOT NULL,
    Zip varchar(10) NOT NULL,
    OwnerID int NOT NULL,
    PRIMARY KEY (PropertyID),
    FOREIGN KEY (OwnerID) REFERENCES Owner(OwnerID) ON DELETE CASCADE
);


CREATE TABLE Service (
    PropertyID INT(11) NOT NULL,
    EmployeeID INT(11) NOT NULL,
    ServiceDate DATETIME DEFAULT CURRENT_TIMESTAMP NOT NULL,
    HoursWorked DECIMAL(3,2) NOT NULL,
    FOREIGN KEY (EmployeeID) REFERENCES Employee(EmployeeID) ON DELETE CASCADE,
    FOREIGN KEY (PropertyID) REFERENCES Property(PropertyID) ON DELETE CASCADE
)


CREATE TABLE Owner (
    OwnerID INT(11) NOT NULL AUTO_INCREMENT,
    OwnerName varchar(255) NOT NULL,
    OwnerEmail varchar(255) NOT NULL UNIQUE,
    OwnerType varchar(255) NOT NULL,
    PRIMARY KEY (OwnerID)
);
