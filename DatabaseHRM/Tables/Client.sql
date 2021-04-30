CREATE TABLE [dbo].[Client]
(
	[ClientId] INT NOT NULL PRIMARY KEY IDENTITY(1,1),
	ClientName								varchar(100)		NULL,
	ClientNumber							int					NULL,
	ClientStatusCode						char(1)				NULL,
)
