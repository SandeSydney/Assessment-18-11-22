/* QUESTION 4 */

/**
    Write an SQL query to fetch duplicate records from EmployeeDetails (without considering the 
    primary key – EmpId)(create dummy data to use) 
*/
USE Assesment
CREATE TABLE EmployeeDetails
(
    EMPLOYEE_ID INT IDENTITY,
    FIRST_NAME VARCHAR(20),
    LAST_NAME VARCHAR(20),
    EMAIL VARCHAR(255),
    PHONE_NUMBER VARCHAR(15),
    JOB_ID VARCHAR(10),
    SALARY VARCHAR(20),
    COMMISSION_PCT INT,
    MANAGER_ID INT,
    DEPARTMENT_ID INT
)

INSERT INTO dbo.EmployeeDetails
    (
    FIRST_NAME,
    LAST_NAME, EMAIL,
    PHONE_NUMBER,
    JOB_ID,
    SALARY,
    COMMISSION_PCT,
    MANAGER_ID,
    DEPARTMENT_ID
    )
VALUES
    ( 'Donald', 'OConnell', 'DOCONNEL', '650.507.9833', 'CLERK', 2600, '-'	, 124, 50),
    ( 'Douglas', 'Grant', 'DGRANT', '650.507.9844', 'CLERK', 2600, '-', 124	, 50),
    ( 'Jennifer', 'Whalen', 'JWHALEN', '515.123.4444', 'AD_ASST', 4400, '-', 101	, 10),
    ( 'Michael', 'Hartstein', 'MHARTSTE', '515.123.5555', 'MK_MAN', 13000, '-', 100	, 20)


SELECT *
FROM
    dbo.EmployeeDetails
WHERE
    JOB_ID = 'CLERK'