/* QUESTION 1 */

/* 
    Create two tables, employees and sales. Get a list of all employees who did not make any sales.  
*/
DROP TABLE IF EXISTS employees
CREATE TABLE employees
(
    empId INT,
    name VARCHAR(50),
    email VARCHAR(50),
    PRIMARY KEY(empId)
)
DROP TABLE IF EXISTS sales
CREATE TABLE sales
(
    saleId INT IDENTITY,
    sale_date DATE,
    empId INT
        FOREIGN KEY(empId) REFERENCES dbo.employees
)


INSERT INTO dbo.employees
    (empId, name, email)
VALUES
    (15, 'Sande', 'sande@gmail.com'),
    (20, 'Mike', 'mike@hotmail.com'),
    (88, 'Sandra', 'sandy@gmail.com'),
    (90, 'James', 'jimmy@youma.com')


INSERT INTO dbo.sales
    (sale_date, empId)
VALUES
    ('2010-12-01', 15),
    ('2010-12-01', 20),
    ('2010-12-01', 15),
    ('2010-12-01', 88),
    ('2010-12-01', 15),
    ('2010-12-01', 15),
    ('2010-12-01', 20),
    ('2010-12-01', 20),
    ('2010-12-01', 20),
    ('2010-12-01', 88),
    ('2010-12-01', 15)

SELECT *
FROM dbo.employees
MINUS
SELECT *
FROM 
dbo.sales