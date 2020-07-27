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
INSERT INTO tbl_student ( st_num,st_name, st_tel, st_addr, st_grade, st_dept  ) VALUES ('20001','길한수','010-2217-7851','경남 김해시 어방동 1088-7',3,'008'  )
INSERT INTO tbl_student ( st_num,st_name, st_tel, st_addr, st_grade, st_dept ) VALUES ('20002','강이찬','010-4311-153','강원도 속초시 대포동 956-5',1,'006'  )
INSERT INTO tbl_student ( st_num,st_name, st_tel, st_addr, st_grade, st_dept  ) VALUES ('20003','개원훈','010-6262-7441','경북 영천시 문외동 38-3번',1,'009'  )
INSERT INTO tbl_student ( st_num,st_name, st_tel, st_addr, st_grade, st_dept  ) VALUES ('20004','경시현','010-9794-9856','서울시 구로구 구로동 3-35번지',1,'006'  )
INSERT INTO tbl_student ( st_num,st_name, st_tel, st_addr, st_grade, st_dept  ) VALUES ('20004','경동영','010-8811-7761','강원도 동해시 천곡동 1077-3',2,'010'  );


