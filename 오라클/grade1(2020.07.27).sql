CREATE TABLE tbl_student(


st_num		CHAR(5)	NOT NULL	PRIMARY KEY,
st_name     VARCHAR2(20)	NOT NULL	,
st_tel		VARCHAR2(20)	NOT NULL	,
st_addr		VARCHAR2(125)		,
st_grade	NUMBER(1)	NOT NULL	,
st_dept		CHAR(10)	NOT NULL	

);

SELECT * FROM tbl_student;

INESERT ALL 
INSERT INTO tbl_student ( st_num,st_name, st_tel, st_addr, st_grade, st_dept  ) VALUES ('20001','���Ѽ�','010-2217-7851','�泲 ���ؽ� ��浿 1088-7',3,'008'  )
INSERT INTO tbl_student ( st_num,st_name, st_tel, st_addr, st_grade, st_dept ) VALUES ('20002','������','010-4311-153','������ ���ʽ� ������ 956-5',1,'006'  )
INSERT INTO tbl_student ( st_num,st_name, st_tel, st_addr, st_grade, st_dept  ) VALUES ('20003','������','010-6262-7441','��� ��õ�� ���ܵ� 38-3��',1,'009'  )
INSERT INTO tbl_student ( st_num,st_name, st_tel, st_addr, st_grade, st_dept  ) VALUES ('20004','�����','010-9794-9856','����� ���α� ���ε� 3-35����',1,'006'  )
INSERT INTO tbl_student ( st_num,st_name, st_tel, st_addr, st_grade, st_dept  ) VALUES ('20004','�浿��','010-8811-7761','������ ���ؽ� õ� 1077-3',2,'010'  );


