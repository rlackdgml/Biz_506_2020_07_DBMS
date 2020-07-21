-- ����� User1
-- tbl_iolist���� ��ǰ��, �ŷ�ó��, �ŷ�óCEO Į���� �����Ͱ� �Ϲ� ���ڿ� ���·� ����Ǿ� �ִ�.
-- �� �����ʹ� ���� Į���� �ߺ��� �����Ͱ� �־ ������ �������鿡�� ����� ������ ��Ȳ�̴�.
--      ���� � ��ǰ�� ��ǰ���� ������ �ʿ��� ���
--      ��ǰ���� UPDATE �Ͽ��� �ϴµ�, 2�� �̻��� ���ڵ带 ������� UPDATE ������ �ʿ��ϴ�.
--      2�� �̻��� ���ڵ带 UPDATE �����ϴ� ���� �������� ���Ἲ�� ��ĥ�� �ִ� ������ �ȴ�.
--      �̷��� ������ �����ϱ� ���� ������ ���� ����ȭ�� �����Ѵ�.

-- ��ǰ�� ������ ������ ���̺�� �и��ϰ�, ��ǰ������ ��ǰ�ڵ带 �ο��� ��
--      tbl_iolist�� �����ϴ� ������� ����ȭ�� �����Ѵ�.

-- tbl_iolist�κ��� ��ǰ�� ����Ʈ�� ��������
--      ��ǰ�� Į���� GROUP BY �Ͽ� �ߺ����� ���� ��ǰ�� ����Ʈ�� �����Ѵ�.
SELECT io_pname,
    MIN(DECODE(io_inout,'����',io_price,0)) AS ���Դܰ�, 
    MAX(DECODE(io_inout,'����',io_price,0)) AS ����ܰ� 
FROM tbl_iolist
GROUP BY io_pname
ORDER BY io_pname;

----------------------------
-- ��ǰ���� ���̺�
----------------------------
CREATE TABLE tbl_product(

    p_code	CHAR(5)		PRIMARY KEY,
    p_name	nVARCHAR2(125)		NOT NULL,
    p_iprice	NUMBER,		
    p_oprice	NUMBER,		
    p_vat	CHAR(1)		DEFAULT '1'

);

SELECT * FROM tbl_product;
DROP TABLE tbl_product;


/*
���Ը��� ���̺��� ��ǰ����(�̸�, �ܰ�) �κ��� �����Ͽ� ��ǰ���� ���̺��� �����ߴ�.

���Ը��� ���̺��� ��ǰ�̸� Į���� �����ϰ�
��ǰ���� ���̺�� JOIN�Ҽ��ֵ��� �����ؾ� �Ѵ�.

���� ���Ը��� ���̺��� ��ǰ�̸��� ����ְ�
��ǰ���� ���̺��� ��ǰ�ڵ�, ��ǰ�̸�, ���� ����ܰ� �� ��� �ִ�.

���Ը��� ���̺��� ��ǰ�̸��� �ش��ϴ� ��ǰ�ڵ带 ���Ը��� ���̺� UPDATE �ϰ�
���Ը��� ���̺��� ��ǰ�̸� Į���� ������ �� JOIN�� �����Ͽ� �����͸� Ȯ��
*/

-- 1. ���Ը��� ���̺��� ��ǰ��� ��ǰ���� ���̺��� ��ǰ���� JOIN�ؼ� 
--      ���Ը��� ���̺��� ��ǰ���� ��ǰ������ ��� �ִ��� Ȯ�� �ϱ�
SELECT IO.io_pname, P.p_name
FROM tbl_iolist IO
    LEFT JOIN tbl_product P
        ON IO.io_pname = P.p_name;

-- �� Query�� �����Ͽ� P.p_name �׸� (null)���� �ִٸ� ��ǰ���� ���̺��� �߸�������� ���̴�.
-- ��ǰ���� ���̺��� �����ϰ� ������ �ٽ� �����ؾ� �Ѵ�.

-- ���� ����߿� P.p_name �׸��� ���� null�� ����Ʈ�� ������
--      ��������� �����̶�� ����Ʈ�� �Ѱ��� ����� �Ѵ�.
SELECT IO.io_pname, P.p_name
FROM tbl_iolist IO
    LEFT JOIN tbl_product P
        ON IO.io_pname = P.p_name
WHERE P.p_name IS NULL;    -- �ش�Į�� ���� NULL�� �ƴϳ�? : IS NOT NULL    

-- ���� ��ǰ�����Ͱ� �̻� ������ �˾����� ���Ը��� ���̺� ��ǰ�ڵ带 ������ "Į���� �߰�"
-- ALTER TABLE : ���̺��� ����(Į�� �߰�, ����)����, Į���� Ÿ�Ժ��� ���� �����ϴ� ���
-- ��ǰ���̺��� p_code Į���� ���� Type���� io_pcode Į���� �߰�
ALTER TABLE tbl_iolist ADD io_pcode CHAR(5);

ALTER TABLE tbl_iolist DROP COLUMN io_pcode ;

-- ALTER TABLE�� �Ҷ� 
-- �̹� ���� �����Ͱ� INSERT�Ǿ� �ִ� ���¿��� Į���� �߰��ϸ�
-- �߰��ϴ� Į���� �翬�� �ʱⰪ�� NULL �ȴ�.
-- �� ������� Į���� �߰��ϸ� ���� Į�� �߰��� �ȵȴ�.
--      �� ����� ���� �����Ͱ� 1���� �������� ����
ALTER TABLE tbl_iolist ADD (io_pcode CHAR(5) NOT NULL);

-- NOT NULL ������ �߰��ϱ�
-- 1. p_code Į���� �߰�, �⺻������ ���ڿ��̹Ƿ� ��ĭ�� �߰�(���� Į���̸� 0�� �߰�)
ALTER TABLE tbl_iolist ADD (io_pcode CHAR(5) DEFAULT ' ');

-- 2. p_code Į���� ���������� NOT NULL ����
ALTER TABLE tbl_iolist MODIFY (io_pcode CONSTRAINT io_pcode NOT NULL);

-- Į�� �߰��ϱ�
ALTER TABLE tbl_iolist ADD (io_pcode CHAR(5) DEFAULT ' ');
-- Į�� �����ϱ�
ALTER TABLE tbl_iolist DROP COLUMN io_pcode ;
-- Į���� NOT NULL �����߰��ϱ�
ALTER TABLE tbl_iolist MODIFY (io_pcode CONSTRAINT io_pcode NOT NULL);

-- Į���� type �����ϱ�
ALTER TABLE tbl_iolist MODIFY (io_pcode CHAR(10));
-- Į���� type �����ϱ� ���� ����
-- Į���� type�� �����Ҷ�  
--      ���ڿ� <==> ���� ó�� type�� ������ �ٸ� ���� ������ �߻��ϰų�
--              �����͸� ��� ���� �� �ִ�.
--      CHAR <==> (n)VARCHAR2
--          ���ڿ��� ���̰� ������ ������ ��ȯ�� �̷�� ����.
--          CHAR <==> nVARCHAR2 �� ����� ���ڿ��� UNICODE(�ѱ� ��)�̸�
--          �ſ� ���Ǹ� �ؾ� �Ѵ�.
--          ���� ���̰� �ٸ��� ������ ������, ���������� ����� ����Ǵ���
--          �����Ͱ� �߸��ų�, ���ڿ��� �˼����� ���� �����Ǵ� ��찡 �߻��� �� �ִ�.


-- Į���� �̸������ϱ�
-- io_pcode �̸��� io_pcode1 ����
ALTER TABLE tbl_iolist RENAME COLUMN io_pcode TO io_pcode1 ;


-- ��ǰ�������� ���Ը����� �� ���ڵ��� ��ǰ��� ��ġ�ϴ� ��ǰ�ڵ带 ã�Ƽ�
-- ���Ը������� ��ǰ�ڵ�(io_pcode) Į���� UPDATE �ֱ�


-- UPDATE ����� Sub Query�� ������
-- 1. Sub Query���� ���� iolist�� io_pname Į���� ���� �䱸�ϰ� �ִ�.
-- 2. tbl_iolist�� ���ڵ带 ��ü SELECT�� �����Ѵ�.
-- 3. SELECT�� List ���� io_pname Į�� ���� Sub Query�� �����Ѵ�.
-- 4. Sub Query�� ���޹��� io_pname ���� tbl_product ���̺��� ��ȸ�� �Ѵ�.
--      �̶� Sub Query�� �ݵ�� 1���� Į��, 1���� VO�� �����ؾ� �Ѵ�.
-- 5. �װ���� ���� iolist�� ���ڵ��� io_pcode Į���� UPDATE�� �����Ѵ�
UPDATE tbl_iolist IO
SET io_pcode = 
(
    SELECT p_code
    FROM tbl_product P
    WHERE p_name = IO.io_pname
);

SELECT io_pcode FROM tbl_iolist;

-- iolist�� pcode�� ���������� UPDATE �Ǿ����� ����
SELECT io_pcode, io_pname,p.p_name
FROM tbl_iolist IO
    LEFT JOIN tbl_product P
        ON IO.io_pcode = P.p_code
WHERE p.p_name IS NULL;        

-------------------------------------
-- �ŷ�ó������ ����ȭ
-------------------------------------
-- �ŷ�ó��, CEO Į���� ���̺� ��� �ִ�.
-- �� Į���� �����Ͽ� �ŷ�ó ������ ����
-- ����� �������� �ŷ�ó���� ���� CEO�� �ٸ��� �ٸ� ȸ��� ����
--      �ŷ�ó��� CEO�� ������ ���� ȸ��� ���� �����͸� ����
SELECT io_dname, io_dceo
FROM tbl_iolist
GROUP BY io_dname, io_dceo
ORDER BY io_dname;

CREATE TABLE tbl_buyer (
    b_code	CHAR(4)		PRIMARY KEY,	
    b_name	nVARCHAR2(125)	NOT NULL,		
    b_ceo	nVARCHAR2(50)	NOT NULL,		
    b_tel	VARCHAR2(20)			
);

-- b_tel Į���� ���� �ߺ���(2���̻���) ���ڵ尡 �ֳ�
SELECT * FROM tbl_buyer;
SELECT b_tel, count(*) FROM tbl_buyer
GROUP BY b_tel
HAVING count(*) > 1;

-- iolist�� ����� dname,dceo Į������ �ŷ�ó�������� �����͸� ��ȸ�ϰ�
-- iolist�� �ŷ�ó �ڵ� Į������ Update

ALTER TABLE tbl_iolist ADD (io_bcode CHAR(4) DEFAULT ' ');
ALTER TABLE tbl_iolist MODIFY (io_bcode CONSTRAINT io_bcode NOT NULL);

DESC tbl_iolist;

-- iolist �� buyer ���̺��� �ŷ�ó��, ��ǥ�ڸ� Į������ JOIN�� �����Ͽ� ������ ����
-- �����Ͱ� �Ѱ��� ��� ���� �ʾƾ� �Ѵ�.
SELECT *
FROM tbl_iolist IO
    LEFT JOIN tbl_buyer B
        ON IO.io_dname = B.b_name
WHERE B.b_name IS NULL;            

-- iolist �� �ŷ�ó �ڵ� UPDATE
-- ���� ������ tbl_buyer ���̺��� �ŷ�ó���� ���� ��ǥ�ڰ� �ٸ� �����Ͱ� �ִ�.
-- �� �����Ϳ��� �ŷ�ó������ ��ȸ�� �ϸ� ��µǴ� ���ڵ�(row)�� 2�� �̻��� ��찡 �߻��Ѵ�.
-- ���� �� ������ �����ϸ� ORA-01427: single-row subquery returns more than one row ������ �߻��Ѵ�
-- �� ������ �ŷ�ó��� CEO ���� ���ÿ� �����Ͽ� 1���� row���� Sub query���� ����� ������ �ؾ� �Ѵ�.
UPDATE tbl_iolist IO
SET io_bcode =
(
    SELECT b_code
    FROM tbl_buyer B
    WHERE B.b_name = io.io_dname 
            AND B.b_ceo = IO.io_dceo
);

SELECT io_bcode, io_dname, b_code, b_name
FROM tbl_iolist IO
    LEFT JOIN tbl_buyer B
        ON IO.io_bcode = B.b_code
WHERE b_code IS NULL OR b_name IS NULL;

-- �����͸� tbl_product, tbl_buyer ���̺�� �и� ������
-- tbl_iolist���� io_pname, io_dname, io_dceo Į���� �ʿ䰡 �����Ƿ� �����Ѵ�.
ALTER TABLE tbl_iolist DROP COLUMN io_pname;
ALTER TABLE tbl_iolist DROP COLUMN io_dname;
ALTER TABLE tbl_iolist DROP COLUMN io_dceo;

SELECT * FROM tbl_iolist;

CREATE VIEW view_iolist
AS
(
SELECT io_seq, io_date, 
        io_bcode, b_name,b_ceo,b_tel, 
        io_pcode, p_name,p_iprice, p_oprice,
        io_inout,
        DECODE(io_inout,'����',io_price,0) AS ���Դܰ�, 
        DECODE(io_inout,'����',io_amt,0) AS ���Աݾ�,
        DECODE(io_inout,'����',io_price,0) AS ����ܰ�, 
        DECODE(io_inout,'����',io_amt,0) AS ����ݾ�
FROM tbl_iolist IO
    LEFT JOIN tbl_product P
        ON io.io_pcode = P.p_code
    LEFT JOIN tbl_buyer B
        ON io.io_bcode = b.b_code
);


SELECT * FROM view_iolist
WHERE io_date BETWEEN '2019-01-01' AND '2019-01-31'
ORDER BY io_date ;












