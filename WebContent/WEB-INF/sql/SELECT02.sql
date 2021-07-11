-- WHERE : row를 조건으로 필터 
SELECT * FROM Customers WHERE Country="Mexico";
SELECT * FROM Customers WHERE CustomerID = 1;

SELECT * FROM Products
WHERE Price = 18;

SELECT * FROM Products
WHERE Price > 30;

SELECT * FROM Products
WHERE Price >= 30;

SELECT * FROM Products
WHERE Price >= 30;

SELECT * FROM Products
WHERE Price <> 30;

SELECT * FROM Products
WHERE Price != 30;

SELECT * FROM Products
WHERE Price BETWEEN 30 AND 40;

SELECT * FROM Customers
WHERE City LIKE 's%'; -- 대소문자 구분 안함

SELECT * FROM Customers
WHERE City LIKE '%G'; -- 대소문자 구분 안함

SELECT * FROM Customers
WHERE City LIKE '%z%'; -- 대소문자 구분 안함

SELECT * FROM Customers
WHERE Country LIKE '%us%'; -- 대소문자 구분 안함
-- IN
SELECT * FROM Customers
WHERE City IN ('Paris');

SELECT * FROM Customers
WHERE Country='Germany' AND City='Berlin';
SELECT * FROM Customers
WHERE City='Berlin' OR City='München';

SELECT * FROM Customers
WHERE Country='Germany' AND (City='Berlin' OR City='München');
