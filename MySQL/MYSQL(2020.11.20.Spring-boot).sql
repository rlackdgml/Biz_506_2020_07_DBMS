CREATE DATABASE mydb;
SHOW DATABASES;
USE mydb;
SHOW TABLES;
DESC tbl_book;

INSERT INTO tbl_book (title,author,comp,price)
VALUES('Do it 자바','이지즈퍼블리시','박은종',30000);
INSERT INTO tbl_book (title,author,comp,price)
VALUES('자바의 정석','도우출판','남궁성',30000);
INSERT INTO tbl_book (title,author,comp,price)
VALUES('열혈자바','오렌지북','윤성우',25000);

SELECT * FROM tbl_book;
SHOW CREATE TABLE tbl_book;
DROP TABLE tbl_book;
SHOW TABLES;