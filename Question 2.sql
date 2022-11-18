DROP TABLE IF EXISTS Customers
CREATE TABLE Customers
(
    CustomerID INT,
    CustomerName VARCHAR(50),
    ContactName VARCHAR(50),
    Address VARCHAR(15),
    City VARCHAR(20),
    PostalCode VARCHAR(20),
    Country VARCHAR(20),
    PRIMARY KEY(CustomerID)
)

INSERT INTO Customers
    (CustomerID, CustomerName, ContactName, Address, City, PostalCode, Country)
VALUES
    (564, 'Sande', 'Cust1', '12-3', 'Nairobi', '00100', 'Kenya'),
    (551, 'Cliff', 'Cust2', '12-4', 'Accra', '00100', 'Ghana'),
    (777, 'Mary', 'Cust3', '12-5', 'Kampala', '00100', 'Uganda'),
    (333, 'John', 'Cust5', '12-6', 'Accra', '00100', 'Ghana'),
    (52364, 'Butch', 'Cust4', '12-2', 'Accra', '00100', 'Ghana'),
    (242, 'Kamau', 'Cust15', '12-2', 'Dodoma', '00100', 'Tanzania'),
    (5464, 'Quinter', 'Cust16', '12-1', 'Accra', '00100', 'Ghana'),
    (2315, 'Base', 'Cust11', '12-0', 'Kigali', '00100', 'Rwanda'),
    (5469, 'Hunt', 'Cust10', '12-10', 'Kigali', '00100', 'Rwanda'),
    (2104, 'James', 'Cust44', '12-253', 'Nairobi', '00100', 'Kenya'),
    (8546, 'Brownie', 'Cust100', '12-33', 'Accra', '00100', 'Ghana'),
    (222, 'Alva', 'Cust210', '12-37', 'Kigali', '00100', 'Rwanda'),
    (21354, 'Diso', 'Cust50', '12-312', 'Accra', '00100', 'Ghana')


SELECT *
FROM
    Customers
GROUP BY CustomerID
HAVING COUNT(Country)>3
ORDER BY CustomerID