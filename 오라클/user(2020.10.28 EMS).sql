-- ems V2
CREATE TABLE tbl_ems (
        id	NUMBER		PRIMARY KEY,
        from_email	VARCHAR2(30)	NOT NULL	,
        to_email	VARCHAR2(30)	NOT NULL	,
        s_date	VARCHAR2(10),		
        s_time	VARCHAR2(10),		
        s_subject	NVARCHAR2(125),		
        s_content	NVARCHAR2(2000),		
        s_file1	NVARCHAR2(125)		,
        s_file2	NVARCHAR2(125)		

);

DELETE FROM tbl_ems;

CREATE SEQUENCE seq_ems
START WITH 1 INCREMENT BY 1;

SELECT * FROM tbl_ems;


commit;

