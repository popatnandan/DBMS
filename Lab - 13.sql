CREATE TABLE Person
(
    PersonID INT PRIMARY KEY,
    PersonName VARCHAR(100) NOT NULL,
    Salary DECIMAL(8,2) NOT NULL,
    JoiningDate DATETIME NOT NULL,
    City VARCHAR(100) NOT NULL,
    Age INT NULL,
    BirthDate DATETIME NOT NULL
);

CREATE TABLE PersonLog
(
    PLogID INT PRIMARY KEY IDENTITY(1,1),
    PersonID INT NOT NULL,
    PersonName VARCHAR(250) NOT NULL,
    Operation VARCHAR(50) NOT NULL,
    UpdateDate DATETIME NOT NULL
);