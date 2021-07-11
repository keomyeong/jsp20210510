use mytest;

CREATE TABLE Comment
(
	id INT PRIMARY KEY AUTO_INCREMENT,
	comment VARCHAR(2047) not NULL,
    memberId VARCHAR(255) not NULL,
    boardId Int not null,
    inseted TIMESTAMP DEFAULT now(),
    FOREIGN KEY (memberId) REFERENCES Member(id),
	FOREIGN KEY (boardid) REFERENCES Board(id)
);
-- 테이블이 있으면 드랍 없으면 안함
DROP Table if EXISTS Comment;
SELECT * FROM Comment;
select * FROM Member;

