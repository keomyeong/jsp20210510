CREATE TABLE MyTable9 (
id INT UNIQUE,
name VARCHAR(255)
);

INSERT INTO MyTable9
(id, name)
VALUES (2, 'hello');
INSERT INTO MyTable9
(id, name)
VALUES (3, 'hello');

DESC MyTable9;
SELECT * FROM MyTable9;

SELECT * FROM MyTable9
WHERE id=2;
INSERT INTO MyTable9
(name)
Member VALUES ('hello');

SELECT * FROM MyTable9
WHERE id IS NOT NULL;

SELECT ifnull(id, 0), name FROM MyTable9;