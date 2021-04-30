CREATE TABLE [dbo].[Employee]
(
	EmployeeId						int IDENTITY(1,1)	NOT NULL,	-- PK
	ClientId						int					NOT NULL,	-- FK1, FK11
	PersonId						int					NOT NULL,	-- FK2
	DefaultDivisionId				INT,
	JobTitle						VARCHAR(50),
	IsSupervisor					bit
)
GO

ALTER TABLE dbo.Employee
	ADD CONSTRAINT FK_Employee_Client FOREIGN KEY (ClientId)
		REFERENCES dbo.Client (ClientId)
GO

ALTER TABLE dbo.Employee
	ADD CONSTRAINT FK_Employee_Person FOREIGN KEY (PersonId)
		REFERENCES dbo.Person (PersonId)
GO 
