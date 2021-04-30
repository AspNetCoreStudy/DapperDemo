CREATE PROCEDURE [dbo].[sp_Employees_WithPersonAndClient_Read]
AS
BEGIN
	SELECT
		e.EmployeeId
	   ,e.PersonId
	   ,e.ClientId
	   ,e.DefaultDivisionId
	   ,e.JobTitle
	   ,e.IsSupervisor

	   /* Keep the embedded/complex object fields separated at the end 
		  from the rest of the root fields. If mixed will not be mapped correctly.
	   */

		-- Person
	   ,p.PersonId
	   ,p.FirstName
	   ,p.LastName
	   ,p.DateOfBirth
	   ,P.Gender

		-- Client
	   ,c.ClientId
	   ,c.ClientName
	   ,c.ClientNumber
	   ,c.ClientStatusCode

	FROM Employee e
	INNER JOIN Person p
		ON e.PersonId = p.PersonId
	INNER JOIN Client c
		ON e.ClientId = c.ClientId
END