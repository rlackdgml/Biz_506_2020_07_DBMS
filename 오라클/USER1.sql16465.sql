SELECT * FROM tbl_member;
delete from tbl_member WHERE m_userid = 'admin';
commit;

update tbl_member set enabled = '1' WHERE m_userid = 'admin';
commit;

SELECT * FROM tbl_member;
SELECT * FROM tbl_authority;


CREATE TABLE tbl_readbook (
        R_SEQ	NUMBER		PRIMARY KEY,
        R_BOOK_SEQ	NUMBER	NOT NULL	,
        R_DATE	VARCHAR2(10)		,
        R_STIME	VARCHAR2(10)		,
        R_ETIME	VARCHAR2(10)		,
        R_COMMENT	nVARCHAR2(2000)		



);
SELECT * FROM tbl_readbook
