CREATE TABLE tbl_review(

    rv_seq	    NUMBER		PRIMARY KEY,
    rv_user	    nVARCHAR2(20)	NOT NULL,
    rv_date	    VARCHAR2(30)	NOT NULL,
    rv_time	    VARCHAR2(30)	NOT NULL,
    rv_title	nVARCHAR2(125)	NOT NULL,	
    rv_contents	nVARCHAR2(2000),
    rv_rating	NUMBER		

);
CREATE SEQUENCE SEQ_REVIEW

START WITH 1 INCREMENT BY 1;

SELECT * FROM tbl_review;


-- 공지사항
CREATE TABLE tbl_notice(
    n_seq	NUMBER	PRIMARY KEY,
    n_content	NVARCHAR2(2000)	NOT NULL	,
    n_date	VARCHAR2(10)	NOT NULL	


);

CREATE SEQUENCE SEQ_NOTICE
START WITH 1 INCREMENT BY 1;

--로그인
CREATE TABLE tbl_login(
l_seq	NUMBER		PRIMARY KEY,
l_id	NUMBER	    NOT NULL,	
l_pw	VARCHAR2(30)	NOT NULL	
);


CREATE SEQUENCE SEQ_LOGIN
START WITH 1 INCREMENT BY 1;



-- 회원가입
CREATE TABLE tbl_join(
j_seq	NUMBER		PRIMARY KEY,
j_id	NUMBER	NOT NULL,
j_pw	VARCHAR2(30)	NOT NULL	
);

Drop TABLE tbl_join;
CREATE SEQUENCE SEQ_JOIN
START WITH 1 INCREMENT BY 1;

-- 마이페이지
CREATE TABLE tbl_my (

    m_seq NUMBER,
    m_id NVARCHAR2(30), 
    m_pw VARCHAR2(30),
    m_pwc VARCHAR2(30) 
    
);

CREATE SEQUENCE SEQ_MY
START WITH 1 INCREMENT BY 1;

SELECT *FROM tbl_my;
commit;


--리스트
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


--게시판
CREATE TABLE tbl_board (
b_seq	NUMBER		PRIMARY KEY,
b_date	VARCHAR2(10)	NOT NULL,	
b_time	VARCHAR2(10)	NOT NULL,	
b_writer	NVARCHAR2(30)	NOT NULL,	
b_subject	NVARCHAR2(125)	NOT NULL,	
b_content	NVARCHAR2(2000)		,
b_count	NUMBER		

);

CREATE SEQUENCE seq_board
START WITH 1 INCREMENT BY 1;

DROP TABLE tbl_board;
DROP SEQUENCE seq_board;


-- 로그인
CREATE TABLE tbl_login (
username	VARCHAR2(30)		PRIMARY KEY,
PASSWORD	nVARCHAR2(255)	NOT NULL	,
M_NAME	nVARCHAR2(30)		,
M_TEL	VARCHAR2(30)		,
M_EMAIL	VARCHAR2(30)		,
Enabled	CHAR(1)	DEFAULT '0'	,
AccountNonExpired	CHAR(1)		,
AccountNonLocked	CHAR(1)		,
CredentialsNonExpired	CHAR(1)		
);

select * from tbl_login;







DROP TABLE tbl_join;
DROP TABLE tbl_login;
commit;







