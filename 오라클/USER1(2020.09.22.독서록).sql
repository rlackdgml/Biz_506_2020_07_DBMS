-- USER1 에서 독서록 프로젝트 

CREATE TABLE tbl_books (
    seq	        NUMBER		PRIMARY KEY,
    title	    NVARCHAR2(125)	NOT NULL,
    link	    NVARCHAR2(255),
    image	    NVARCHAR2(255),
    author	    NVARCHAR2(125),
    price	    NUMBER,
    discount	NUMBER,	
    publisher	NVARCHAR2(125),
    isbn	    CHAR(13),
    description	NVARCHAR2(2000),
    pubdate	    CHAR(15),
    buydate	    CHAR(10),
    buyprice	NUMBER,
    buystore	NVARCHAR2(50)		


);

CREATE SEQUENCE seq_books
START WITH 1 INCREMENT BY 1;

INSERT INTO tbl_books (seq,title,author,publisher)
VALUES(SEQ_BOOKS.NEXTVAL,'자바입문','박은종','이지즈퍼프리싱');

INSERT INTO tbl_books (seq,title,author,publisher)
VALUES(SEQ_BOOKS.NEXTVAL,'오라클데이터베이스','이지훈','이지즈퍼프리싱');

SELECT * FROM tbl_books;
commit;

DELETE FROM tbl_books;
commit;


 

