use test;
create table Table01
(
 id int PRIMARY key AUTO_INCREMENT,
 name VARCHAR(255),
 bookId INT
);
create table Table02
(
 id int PRIMARY key AUTO_INCREMENT,
 bookname VARCHAR(255)
);

INSERT INTO Table01
(name, bookId)
VALUES('kim', 1);
INSERT INTO Table01
(name, bookId)
VALUES('lee', 2);
INSERT INTO Table01
(name, bookId)
VALUES('choi', 3);
INSERT INTO Table01
(name, bookId)
VALUES('park', 4);

INSERT INTO Table02
(bookname)
VALUES('book1');
INSERT INTO Table02
(bookname)
VALUES('book2');
INSERT INTO Table02
(bookname)
VALUES('book3');
INSERT INTO Table02
(bookname)
VALUES('book4');

SELECT * FROM Table01;
SELECT * FROM Table02;
SELECT * FROM Table01, Table02;

-- join
SELECT * FROM
Table01 JOIN Table02
ON Table01.bookId = Table02.id;

-- alias
-- table
SELECT * FROM
Table01 AS t1 JOIN Table02 AS t2
ON t1.bookId = t2.id;

SELECT * FROM
Table01 t1 JOIN Table02 t2
ON t1.bookId = t2.id;

-- column
SELECT 
t1.id AS id1,
t1.name AS name1,
t1.bookId AS bookId,
t2.id AS id2,
t2.bookName AS bname
FROM
Table01 t1 JOIN Table02 t2
On t1.bookId = t2.id;

SELECT 
t1.id id1,
t1.name name1,
t1.bookId bookId,
t2.id id2,
t2.bookName bname
FROM
Table01 t1 JOIN Table02 t2
On t1.bookId = t2.id;


