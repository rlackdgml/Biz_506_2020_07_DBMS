-- user1
CREATE TABLE tbl_images(
    i_seq	NUMBER		PRIMARY KEY,
    i_b_seq	NUMBER	NOT NULL,	
    i_org_name	NVARCHAR2(255)	NOT NULL,	
    i_file_name	NVARCHAR2(255)	NOT NULL,	
    i_down	NUMBER		
);
CREATE SEQUENCE seq_images
START WITH 1 INCREMENT BY 1;
SELECT * FROM tbl_images;
commit;



CREATE TABLE tbl_ems(
        s_seq Number,
        id	NUMBER	NOT NULL	PRIMARY KEY,
        from_email	Nvarchar2(30)	NOT NULL,	
        to_email	Nvarchar2(30)	NOT NULL,	
        s_date	Nvarchar2(10),		
        s_time	Nvarchar2(10),		
        s_subject	Nvarchar2(125)	,
        s_content	Nvarchar2(2000)	,	
        s_file1	Nvarchar2(125)	,	
        s_file2	Nvarchar2(125)		
);

drop table Tbl_ems;
select * from tbl_ems;