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

INSERT INTO tbl_student ( st_num,st_name, st_tel, st_addr, st_grade, st_dept  ) VALUES ('20001','���Ѽ�','010-2217-7851','�泲 ���ؽ� ��浿 1088-7',3,'008'  );
INSERT INTO tbl_student ( st_num,st_name, st_tel, st_addr, st_grade, st_dept ) VALUES ('20002','������','010-4311-153','������ ���ʽ� ������ 956-5',1,'006'  );
INSERT INTO tbl_student ( st_num,st_name, st_tel, st_addr, st_grade, st_dept  ) VALUES ('20003','������','010-6262-7441','��� ��õ�� ���ܵ� 38-3��',1,'009'  );
INSERT INTO tbl_student ( st_num,st_name, st_tel, st_addr, st_grade, st_dept  ) VALUES ('20004','�����','010-9794-9856','����� ���α� ���ε� 3-35����',1,'006'  );
INSERT INTO tbl_student ( st_num,st_name, st_tel, st_addr, st_grade, st_dept  ) VALUES ('20004','�浿��','010-8811-7761','������ ���ؽ� õ� 1077-3',2,'010'  );


DROP TABLE tbl_dept;
CREATE TABLE tbl_dept(


d_code	CHAR(4)		PRIMARY KEY,
d_name	nVARCHAR2(20)	NOT NULL	,
d_prof	nVARCHAR2(20)	NOT NULL	

);
SELECT * from tbl_dept;
INSERT ALL
 INTO tbl_dept (d_code,d_name,d_prof  ) VALUES ('001','��ǻ�Ͱ���','�����' );
 INTO tbl_dept(d_code,d_name,d_prof  ) VALUES ('002','���ڰ���','��ö��'  );
 INTO tbl_dept( d_code,d_name,d_prof  ) VALUES ( '003','����','ŷ���ʵ�' );
 
 
DROP TABLE tbl_score;
CREATE TABLE tbl_score(

sc_num	CHAR(10)	NOT NULL	PRIMARY KEY,
sc_dept	nVARCHAR2(20)	NOT NULL	,
sc_score	NUMBER(3)	NOT NULL	


);
SELECT * FROM  tbl_score;

INSERT INTO TBL_SCORE (SC_NUM, SC_DEPT, SC_SCORE) VALUES ('20001','�����ͺ��̽�',71);

INSERT INTO TBL_SCORE (SC_NUM, SC_DEPT, SC_SCORE) VALUES ('20001','����',63);

INSERT INTO TBL_SCORE (SC_NUM, SC_DEPT, SC_SCORE) VALUES ('20001','�̼�',50);

INSERT INTO TBL_SCORE (SC_NUM, SC_DEPT, SC_SCORE) VALUES ('20001','����Ʈ�������',56);

INSERT INTO TBL_SCORE (SC_NUM, SC_DEPT, SC_SCORE) VALUES ('20002','�����ͺ��̽�',84);

INSERT INTO TBL_SCORE (SC_NUM, SC_DEPT, SC_SCORE) VALUES ('20002','����',75);

INSERT INTO TBL_SCORE (SC_NUM, SC_DEPT, SC_SCORE) VALUES ('20002','����',52);

INSERT INTO TBL_SCORE (SC_NUM, SC_DEPT, SC_SCORE) VALUES ('20003','����',89);

INSERT INTO TBL_SCORE (SC_NUM, SC_DEPT, SC_SCORE) VALUES ('20003','����',63);

INSERT INTO TBL_SCORE (SC_NUM, SC_DEPT, SC_SCORE) VALUES ('20003','����',70);






 
 













