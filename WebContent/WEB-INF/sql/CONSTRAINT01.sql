CREATE TABLE MyTable7
(
id INT,
name VARCHAR(255)
);	

INSERT INTO MyTable7
(id, name)
VALUE(3, 'hello');

SELECT * FROM MyTable7;
INSERT INTO MyTable7
(id) VALUES (4);

INSERT INTO MyTable7
(name) VALUES ('donald');

CREATE TABLE MyTable8
(
id INT NOT NULL,
name VARCHAR(255) NOT NULL
);
INSERT INTO MyTable8
(id, name)
VALUES (3, 'hellor');

SELECT * FROM MyTable8;

INSERT INTO MyTable8
(id) VALUE (5);

DESC MyTable8;
