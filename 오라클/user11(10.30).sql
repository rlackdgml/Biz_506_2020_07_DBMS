-- db

CREATE TABLE tbl_grade (

    seq	NUMBER		PRIMARY KEY,
    s_num	NUMBER	NOT NULL,	
    s_name	VARCHAR2(30)	NOT NULL,	
    s_kor	NUMBER,		
    s_eng	NUMBER,		
    s_math	NUMBER,		
    s_sum	NUMBER,		
    s_avg	NUMBER,		
    s_us	VARCHAR2(30)		

);

CREATE SEQUENCE SEQ_GRADE
START WITH 1 INCREMENT BY 1;

SELECT *FROM tbl_grade;
