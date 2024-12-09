CREATE TABLE Person_P13
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
    UpdateDate DATETIME NOT NULL,
    FOREIGN KEY (PersonID) REFERENCES Person_P13(PersonID)
);

--Q1--

-- TR_PERSON_P13_INSERT 1,'Nandan', INSERT, '2006-03-21'
CREATE TRIGGER TR_PERSON_P13_INSERT
ON Person_P13
AFTER INSERT,UPDATE,DELETE
AS
BEGIN
---------------------Check if it's an INSERT Operation------------------------------
	IF EXISTS (SELECT * FROM INSERTED) AND NOT EXISTS (SELECT * FROM DELETED)
	BEGIN
		INSERT INTO PersonLog
			(PersonID,PersonName,Operation,UpdateDate)
		SELECT 
			i.PersonID,
			i.PersonName,
			'INSERT',
			GETDATE()
		FROM INSERTED i;
	END
END

INSERT INTO Person_P13 
VALUES(1,'Nandan',700000,'2024-01-29','Rajkot',18,'2006-03-21')
SELECT * FROM PersonLog


-- TR_PERSON_P13_UPDATE UPDATE Person_P13 SET PersonName='NP' WHERE PersonID=1
CREATE TRIGGER TR_PERSON_P13_UPDATE
ON Person_P13
AFTER INSERT,UPDATE,DELETE
AS
BEGIN
---------------------Check if it's an UPDATE Operation------------------------------
	IF EXISTS (SELECT * FROM INSERTED) AND EXISTS (SELECT * FROM DELETED)
	BEGIN
		INSERT INTO PersonLog
			(PersonID,PersonName,Operation,UpdateDate)
		SELECT 
			i.PersonID,
			i.PersonName,
			'UPDATE',
			GETDATE()
		FROM INSERTED i
			INNER JOIN DELETED d ON i.PersonID =d.PersonID;
	END
END

UPDATE Person_P13 
SET PersonName='NP'
WHERE PersonID=1
SELECT * FROM PersonLog


-- TR_PERSON_P13_DELETE 1,'Nandan', INSERT, '2006-03-21'
CREATE TRIGGER TR_PERSON_P13_DELETE
ON Person_P13
AFTER INSERT,UPDATE,DELETE
AS
BEGIN
---------------------Check if it's an UPDATE Operation------------------------------
	IF EXISTS (SELECT * FROM DELETED) AND NOT EXISTS (SELECT * FROM INSERTED)
	BEGIN
		INSERT INTO PersonLog
			(PersonID,PersonName,Operation,UpdateDate)
		SELECT 
			i.PersonID,
			i.PersonName,
			'DELETE',
			GETDATE()
		FROM INSERTED i
	END
END

DELETE Person_P13
WHERE PersonID=1
SELECT * FROM PersonLog


