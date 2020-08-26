-- 여기는 user1화면
-- 상품정보의 삭제 기능을 구현하기 위해 삭제Flag 칼럼을 추가



CREATE TABLE tbl_product (
    P_CODE	    CHAR(6)		PRIMARY KEY,
    P_NAME	    NVARCHAR2(30)	NOT NULL,	
    P_DCODE	    CHAR(4),		
    P_STD	    nVARCHAR2(20),
    P_IPRICE	NUMBER	,
    P_OPRICE	NUMBER	,
    P_IMAGE	    nVARCHAR2(125),	
    P_NOT_USE	CHAR(1)	DEFAULT NULL	
);

DROP TABLE tbl_dept;
CREATE TABLE tbl_dept(
    D_CODE	    CHAR(4)		PRIMARY KEY,
    D_NAME	    NVARCHAR2(50)	NOT NULL,	
    D_CEO	    NVARCHAR2(30)	NOT NULL,	
    D_TEL	    VARCHAR(20),		
    D_ADDRESS	NVARCHAR2(255),
    D_MANAGER	NVARCHAR2(50),
    D_MN_TEL	VARCHAR2(20),
    D_NOT_USE	CHAR(1)	DEFAULT NULL	

);

SELECT * FROM tbl_product;
-- 삭제 표시가 되지 않은 데이터만 조회
SELECT * FROM tbl_product WHERE p_not_use IS NULL;
commit;

