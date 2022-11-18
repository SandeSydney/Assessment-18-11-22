/* QUESTION 3 */

-- Procedure to update employee
CREATE OR ALTER PROC uspupdateEmployee(
    @id INT, 
    @name VARCHAR(50),
    @email VARCHAR(255), 
    @telephone VARCHAR(10)
)
AS
BEGIN

UPDATE dbo.employeesTable
SET
    name = @name,
    email = @email,
    telephone = @telephone
WHERE
    id = @id

END