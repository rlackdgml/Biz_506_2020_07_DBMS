-- user1 화면

CREATE TABLE tbl_member (
        M_USERID	    VARCHAR2(50)		PRIMARY KEY,
        M_PASSWORD	    VARCHAR2(125)	    NOT NULL,	
        M_NAME	        NVARCHAR2(30)	    NOT NULL,	
        M_TEL	        VARCHAR2(20),		
        M_ADDRESS	    NVARCHAR2(255),
        M_ROLL	        VARCHAR2(20)	
);

SELECT * FROM tbl_member;
