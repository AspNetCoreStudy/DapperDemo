BEGIN TRAN

-- Create Clients
INSERT INTO Client (ClientName, ClientNumber, ClientStatusCode)
	VALUES ('Anclote Village Marina', 100, 'A'),
	('Thompson Academy', 101, 'A')

-- Create People
INSERT INTO Person (FirstName, LastName, DateOfBirth, Gender)
	VALUES ('Nancy', 'Todd', '1963-04-26', 'F'),
	('Robert', 'Harris', '1992-10-06', 'M'),
	('Achilleas', 'Houllis', '1983-02-04', 'F'),
	('Matthew', 'Kier', '1988-11-09', 'M'),
	('Christopher', 'Fowler', '1995-02-22', 'M')

-- Create employees
INSERT INTO Employee (ClientId, PersonId, DefaultDivisionId, JobTitle, IsSupervisor)
	VALUES (1, 1, 0, 'OFFICE STAFF', 1),
	(1, 2, 0, 'DOCK HAND', 0),
	(1, 3, 0, 'FORKLIFT DRIVER', 0),
	(2, 4, 0, 'DOCK HAND', 0),
	(2, 5, 0, 'DOCKHAND', 0)

COMMIT