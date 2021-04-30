CREATE PROCEDURE [dbo].[sp_Employees_Read]
AS
BEGIN
	SELECT
		e.EmployeeId
	   ,e.ClientId
	   ,e.PersonId
	   ,e.DefaultDivisionId
	   ,e.JobTitle
	   ,e.IsSupervisor
	FROM Employee e
END