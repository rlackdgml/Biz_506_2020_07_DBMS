-- BBS 프로젝트

DROP TABLE tbl_bbs;
CREATE TABLE tbl_bbs (
    b_seq	NUMBER		PRIMARY KEY,
    b_date	VARCHAR2(10)	NOT NULL,	
    b_time	VARCHAR2(10)	NOT NULL,	
    b_writer	NVARCHAR2(30)	NOT NULL,
    b_subject	NVARCHAR2(125)	NOT NULL,	
    b_content	NVARCHAR2(2000)	NOT NULL,	
    b_count	NUMBER,		
    b_file	NVARCHAR2(125)		

);
CREATE SEQUENCE SEQ_BBS
START WITH 1 INCREMENT BY 1;

SELECT * FROM tbl_bbs;
commit;
