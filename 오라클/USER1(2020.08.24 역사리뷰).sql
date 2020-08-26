CREATE TABLE tbl_review(

    rv_seq	    NUMBER		PRIMARY KEY,
    rv_user	    nVARCHAR2(20)	NOT NULL,
    rv_date	    VARCHAR2(30)	NOT NULL,
    rv_time	    VARCHAR2(30)	NOT NULL,
    rv_title	nVARCHAR2(125)	NOT NULL,	
    rv_contents	nVARCHAR2(2000),
    rv_rating	NUMBER		

);


DROP TABLE tbl_review;

SELECT * FROM tbl_review;
