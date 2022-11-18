/* QUESTION 5 */

-- Write an SQL query to fetch only odd rows from the table (create dummy data to use) 

CREATE TABLE userTable(
    id INT IDENTITY,
    name VARCHAR(10),
    email VARCHAR(300)
)

INSERT INTO dbo.userTable(
    name,
    email
) 
VALUES
    ('Kamau', 'kamau@gmail.com'),
    ('Edith', 'edit@hotmail.com'),
    ('Brian', 'yobra@gmail.com'),
    ('Newton', 'newto@mymail.com'),
    ('David', 'daudi@you.com')


SELECT * 
FROM 
    dbo.userTable
WHERE 
    id%2 != 0