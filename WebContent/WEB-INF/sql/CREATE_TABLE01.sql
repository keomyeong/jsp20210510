CREATE TABLE MyTable1 (
	Col1 INT
);

DESC MyTable1;

INSERT INTO MyTable1
(Col1)
VALUES (999);

SELECT * FROM MyTable1;

INSERT INTO MyTable1
(Col1)
VALUES (888);

DELETE FROM MyTable1
WHERE Col1 = 999;

UPDATE MyTable1
SET Col1 = 777
WHERE Col1 = 888;