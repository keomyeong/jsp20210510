CREATE DATABASE mytest;
USE mytest;
CREATE TABLE Member(
	id VARCHAR(255),
    password VARCHAR(255),
    name VARCHAR(255),
    birth DATE,
    inserted TIMESTAMP
);
DROP TABLE Member;
SELECT * FROM Member;
DESC mytest;
