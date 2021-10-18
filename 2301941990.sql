--Fauza Wahidira
--2301941990

USE JBodyShop

--1
CREATE TABLE StaffPosition(
	StaffPositionID CHAR(5) PRIMARY KEY CHECK(StaffPositionID LIKE 'PO[0-9][0-9][0-9]'),
	StaffPositionName VARCHAR(30) NOT NULL,
	StaffPositionBonus NUMERIC(11,2) CHECK(StaffPositionBonus >= 0)
)

--2
ALTER TABLE Customer
ADD [CustomerAddress] VARCHAR(100)

ALTER TABLE Customer
ADD CONSTRAINT CustomerAddress CHECK(CustomerAddress LIKE '%Street')

--3
INSERT INTO Customer(CustomerID, CustomerName, CustomerEmail, CustomerPhone, CustomerGender, CustomerDateOfBirth)
VALUES('CU011', 'Alicia Hemsworth', 'alicia.hemsworth@gmail.com', '0812121233', 'Female', '2000-11-01')

--4
SELECT	StaffName,
		StaffGender,
		StaffSalary
FROM	Staff
WHERE	StaffGender LIKE 'Female' 

--5
UPDATE	Staff
SET		StaffSalary = StaffSalary + 1000000
FROM	Staff s, TransactionHeader th
WHERE	s.StaffID = th.StaffID AND
		YEAR(TransactionDate) = 2020