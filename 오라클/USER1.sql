DROP TABLE tbl_student;
CREATE TABLE tbl_student(
 
st_num		CHAR(5)	NOT NULL	PRIMARY KEY,
st_name     VARCHAR2(20)	NOT NULL,
st_tel		VARCHAR2(20)	NOT NULL	,
st_addr		VARCHAR2(125)		,
st_grade	NUMBER(1)	NOT NULL	,
st_dept		CHAR(10)	NOT NULL	

);

SELECT * FROM tbl_student;

INSERT INTO tbl_student ( st_num,st_name, st_tel, st_addr, st_grade, st_dept  ) VALUES ('20001','길한수','010-2217-7851','경남 김해시 어방동 1088-7',3,'008'  );
INSERT INTO tbl_student ( st_num,st_name, st_tel, st_addr, st_grade, st_dept ) VALUES ('20002','강이찬','010-4311-153','강원도 속초시 대포동 956-5',1,'006'  );
INSERT INTO tbl_student ( st_num,st_name, st_tel, st_addr, st_grade, st_dept  ) VALUES ('20003','개원훈','010-6262-7441','경북 영천시 문외동 38-3번',1,'009'  );
INSERT INTO tbl_student ( st_num,st_name, st_tel, st_addr, st_grade, st_dept  ) VALUES ('20004','경시현','010-9794-9856','서울시 구로구 구로동 3-35번지',1,'006'  );
INSERT INTO tbl_student ( st_num,st_name, st_tel, st_addr, st_grade, st_dept  ) VALUES ('20004','경동영','010-8811-7761','강원도 동해시 천곡동 1077-3',2,'010'  );


DROP TABLE tbl_dept;
CREATE TABLE tbl_dept(


d_code	CHAR(4)		PRIMARY KEY,
d_name	nVARCHAR2(20)	NOT NULL	,
d_prof	nVARCHAR2(20)	NOT NULL	

);
SELECT * from tbl_dept;
INSERT ALL
 INTO tbl_dept (d_code,d_name,d_prof  ) VALUES ('001','컴퓨터공학','토발즈' );
 INTO tbl_dept(d_code,d_name,d_prof  ) VALUES ('002','전자공학','이철기'  );
 INTO tbl_dept( d_code,d_name,d_prof  ) VALUES ( '003','법학','킹스필드' );
 
 
DROP TABLE tbl_score;
CREATE TABLE tbl_score(

sc_num	CHAR(10)	NOT NULL	PRIMARY KEY,
sc_dept	nVARCHAR2(20)	NOT NULL	,
sc_score	NUMBER(3)	NOT NULL	


);
SELECT * FROM  tbl_score;

INSERT INTO TBL_SCORE (SC_NUM, SC_DEPT, SC_SCORE) VALUES ('20001','데이터베이스',71);

INSERT INTO TBL_SCORE (SC_NUM, SC_DEPT, SC_SCORE) VALUES ('20001','수학',63);

INSERT INTO TBL_SCORE (SC_NUM, SC_DEPT, SC_SCORE) VALUES ('20001','미술',50);

INSERT INTO TBL_SCORE (SC_NUM, SC_DEPT, SC_SCORE) VALUES ('20001','소프트웨어공학',56);

INSERT INTO TBL_SCORE (SC_NUM, SC_DEPT, SC_SCORE) VALUES ('20002','데이터베이스',84);

INSERT INTO TBL_SCORE (SC_NUM, SC_DEPT, SC_SCORE) VALUES ('20002','음악',75);

INSERT INTO TBL_SCORE (SC_NUM, SC_DEPT, SC_SCORE) VALUES ('20002','국어',52);

INSERT INTO TBL_SCORE (SC_NUM, SC_DEPT, SC_SCORE) VALUES ('20003','수학',89);

INSERT INTO TBL_SCORE (SC_NUM, SC_DEPT, SC_SCORE) VALUES ('20003','영어',63);

INSERT INTO TBL_SCORE (SC_NUM, SC_DEPT, SC_SCORE) VALUES ('20003','국어',70);






 
 













