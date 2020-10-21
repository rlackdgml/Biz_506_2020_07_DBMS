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

CREATE TABLE tbl_board (
    b_seq	NUMBER		PRIMARY KEY,
    b_date	VARCHAR2(10)	NOT NULL,	
    b_time	VARCHAR2(10)	NOT NULL,	
    b_writer	NVARCHAR2(30)	NOT NULL,
    b_subject	NVARCHAR2(125)	NOT NULL,	
    b_content	NVARCHAR2(2000)	NOT NULL,	
    b_count	NUMBER,		
    b_file	NVARCHAR2(125)		

);
CREATE SEQUENCE SEQ_BOARD
START WITH 1 INCREMENT BY 1;

SELECT * FROM tbl_board;





CREATE TABLE tbl_hlist (
        h_seq	        NUMBER		    PRIMARY KEY,
        h_name	        nVARCHAR2(20)	NOT NULL,	
        h_address	    nVARCHAR2(125)	NOT NULL,
        h_ge	        nVARCHAR2(30)	NOT NULL,	
        h_quiry	        nVARCHAR2(500),		
        h_offday	    nVARCHAR2(500),	
        h_guide 	    nVARCHAR2(500),
        h_onuse	        nVARCHAR2(15),		
        h_usage     	nVARCHAR2(300),		
        h_car	        nVARCHAR2(300),		
        h_infor	        nVARCHAR2(2000)
        
);
DROP TABLE tbl_hlist;
CREATE SEQUENCE SEQ_HLIST
START WITH 1 INCREMENT BY 1;

CREATE TABLE tbl_hlist2 (
        h_seq	        NUMBER		    PRIMARY KEY,
        h_name	        nVARCHAR2(20)	NOT NULL,	
        h_address	    nVARCHAR2(125)	NOT NULL,
        h_ge	        nVARCHAR2(30)	NOT NULL,	
        h_quiry	        nVARCHAR2(500),		
        h_offday	    nVARCHAR2(500),	
        h_guide 	    nVARCHAR2(500),
        h_onuse	        nVARCHAR2(15),		
        h_usage     	nVARCHAR2(300),		
        h_car	        nVARCHAR2(300),		
        h_infor	        nVARCHAR2(2000)
        
);
CREATE SEQUENCE SEQ_HLIST2
START WITH 1 INCREMENT BY 1;
CREATE TABLE tbl_hlist3 (
        h_seq	        NUMBER		    PRIMARY KEY,
        h_name	        nVARCHAR2(20)	NOT NULL,	
        h_address	    nVARCHAR2(125)	NOT NULL,
        h_ge	        nVARCHAR2(30)	NOT NULL,	
        h_quiry	        nVARCHAR2(500),		
        h_offday	    nVARCHAR2(500),	
        h_guide 	    nVARCHAR2(500),
        h_onuse	        nVARCHAR2(15),		
        h_usage     	nVARCHAR2(300),		
        h_car	        nVARCHAR2(300),		
        h_infor	        nVARCHAR2(2000)
        
);
CREATE SEQUENCE SEQ_HLIST3
START WITH 1 INCREMENT BY 1;

CREATE TABLE tbl_notice(
    n_seq	NUMBER	PRIMARY KEY,
    n_content	NVARCHAR2(2000)	NOT NULL	,
    n_date	VARCHAR2(10)	NOT NULL	


);

CREATE SEQUENCE SEQ_NOTICE
START WITH 1 INCREMENT BY 1;