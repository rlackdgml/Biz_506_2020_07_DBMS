-- user1

CREATE TABLE tbl_hlist (
h_seq	NUMBER	PRIMARY KEY,
h_category	CHAR(1)	NOT NULL,
h_title	nVARCHAR2(50)	NOT NULL,
h_address	NVARCHAR2(255)	NOT NULL,
h_content	NVARCHAR2(2000)	NOT NULL,
h_tel	NVARCHAR2(500)	NOT NULL,
h_file	NVARCHAR2(501)	
	

);

CREATE SEQUENCE seq_hlist
START WITH 31 INCREMENT BY 1;

DROP TABLE tbl_hlist;
DROP SEQUENCE seq_hlist;

SELECT * FROM tbl_hlist WHERE h_category = 1 order by h_seq;

DELETE tbl_hlist WHERE h_category = 2;

CREATE TABLE tbl_board (
b_seq	NUMBER		PRIMARY KEY,
b_date	VARCHAR2(10)	NOT NULL,	
b_time	VARCHAR2(10)	NOT NULL,	
b_writer	NVARCHAR2(30)	NOT NULL,	
b_subject	NVARCHAR2(125)	NOT NULL,	
b_content	NVARCHAR2(2000)		,
b_count	NUMBER	,
id VARCHAR2(30)

);

CREATE SEQUENCE seq_board
START WITH 1 INCREMENT BY 1;

DROP TABLE tbl_board;
DROP SEQUENCE seq_board;

CREATE TABLE tbl_user (
username	VARCHAR2(30)		PRIMARY KEY,
PASSWORD	nVARCHAR2(255)	NOT NULL	,
M_ROLE	VARCHAR2(30)		,
Enabled	CHAR(1)		,
AccountNonExpired	CHAR(1)		,
AccountNonLocked	CHAR(1)		,
CredentialsNonExpired	CHAR(1)		
);

DROP TABLE tbl_user;

SELECT * FROM tbl_user;
SELECT * FROM tbl_user WHERE username = 'admin';
DELETE FROM tbl_user;
commit;

