/* QUESTION 3 */

-- Procedure to insert employee
CREATE OR ALTER PROC uspinsertEmployee(
    @name VARCHAR(30), 
    @email VARCHAR(255), 
    @telephone VARCHAR(10)
)
AS
BEGIN

INSERT INTO dbo.employeeTable(name, email, telephone)
VALUES
    (
        @name, 
        @email, 
        @telephone
    )

END