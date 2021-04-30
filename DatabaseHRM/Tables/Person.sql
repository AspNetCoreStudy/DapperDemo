CREATE TABLE [dbo].[Person]
(
	[PersonId] INT NOT NULL PRIMARY KEY IDENTITY(1,1),
	FirstName						varchar(20)			NULL,
	LastName						varchar(40)			NULL,
	DateOfBirth						date				NULL,
	[Gender]						char(1)				NULL,
)
