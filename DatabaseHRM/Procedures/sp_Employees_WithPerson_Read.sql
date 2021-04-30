CREATE PROCEDURE [dbo].[sp_Employees_WithPerson_Read]
AS
BEGIN
	SELECT
		e.EmployeeId
	   ,e.ClientId
	   ,e.DefaultDivisionId
	   ,e.JobTitle
	   ,e.IsSupervisor

		-- Person
	   ,p.PersonId
	   ,p.FirstName
	   ,p.LastName
	   ,p.DateOfBirth
	   ,P.Gender

	FROM Employee e
	INNER JOIN Person p
		ON e.PersonId = p.PersonId
END