use test;
SELECT * FROM Customers;

SELECT COUNT(*) FROM Customers;

SELECT Country, COUNT(*)
FROM Customers
GROUP BY Country;