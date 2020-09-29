CREATE TABLE tbl_iolist (

        seq	        NUMBER		PRIMARY KEY,
        IO_DATE	    VARCHAR2(10)	NOT NULL,
        IO_TIME	    VARCHAR2(10),
        IO_INPUT	CHAR(1),
        IO_PNAME	NVARCHAR2(30),		
        IO_PRICE	NUMBER,
        IO_QUAN	    NUMBER,
        IO_TOTAL	NUMBER		

);

CREATE SEQUENCE seq_iolist
START WITH 1 INCREMENT BY 1;


