select * from tbl_member;
delete from tbl_member WHERE m_userid = 'admin1';
commit ;

update tbl_member set enabled = '1' WHERE m_userid = 'admin11';
commit ;

CREATE TABLE tbl_readbook (
    R_SEQ	NUMBER		PRIMARY KEY,
    R_BOOK_SEQ	NUMBER	NOT NULL,	
    R_DATE	VARCHAR2(10),		
    R_STIME	VARCHAR2(10),		
    R_ETIME	VARCHAR2(10),		
    R_COMMENT	nVARCHAR2(2000)		
   
);
CREATE SEQUENCE SEQ_READBOOK
START WITH 1 INCREMENT BY 1;

SELECT * FROM tbl_readbook;
