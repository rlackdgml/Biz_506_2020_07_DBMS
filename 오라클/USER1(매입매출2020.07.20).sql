-- User1 ȭ���Դϴ�

--------------------------------------------------------
-- ���� ���� ���� ������Ʈ
--------------------------------------------------------

-- 00 ȸ���� ���Ը��� ���� ������Ʈ�� �����ϰ� �ִ�.
-- �� ȸ��� ������ ������ �̿��Ͽ� �ŷ�ó�� ���Ը��� ������ ������ �Դµ�
-- �ֱ� App�� �����Ͽ� �����ͺ��̽� ȭ �ϰ� ������ �����Ϸ� �Ѵ�.
-- ���������͸� �޾Ƽ� DB�� ������ ���� ��ȯ �۾��� �����ϰ� �ִ�.

-- ���� ���Ը�������� DB�� ����� ���� ����, ������ �и��ϰ�, ��¥�� ���ڿ�ȭ �ߴ�.
-- �� �����͸� DB�� �����Ϸ��� �ô���, �� �����Ϳ� PKĮ������ ������ ���� Į���� ã�� ���� ����.
-- �̷��� ���(Work DB�� ���)���� ���� �����Ϳ� ������ ������ PKĮ���� �����ؼ�
-- ���� ���ִ� ���� ����.

-------------------------------------------------
-- ���Ը��� ���� Table
-------------------------------------------------
CREATE TABLE tbl_iolist (
   io_seq	NUMBER		PRIMARY KEY,
   io_date	VARCHAR2(10)	NOT NULL,	
   io_pname	nVARCHAR2(125)	NOT NULL,
   io_dname	nVARCHAR2(125)	NOT NULL,	
   io_dceo	nVARCHAR2(125)	NOT NULL,	
   io_inout	nVARCHAR2(2)	NOT NULL,	
   io_qty	NUMBER		DEFAULT 0,
   io_price	NUMBER		DEFAULT 0,
   io_amt	NUMBER		DEFAULT 0
);

-- ��ü ������ ����
SELECT COUNT(*) FROM  tbl_iolist;

-- ���԰� ����� �����Ͽ� ���� ����
SELECT io_inout, COUNT(*) FROM tbl_iolist
GROUP BY io_inout;


-- ���Ե����͸� ���� ������
SELECT * FROM tbl_iolist
WHERE io_inout = '����' ;

SELECT * FROM tbl_iolist
WHERE io_inout = '����' ;

-- �ŷ������� 90�� �̻��� �����͸� ���������
SELECT * FROM tbl_iolist
WHERE io_qty >= 90;

-- �����͸� Ȯ���ϴ� �ô��� �ܰ��� �ݾ��� 0�� �����Ͱ� ���δ�.
SELECT * FROM tbl_iolist
WHERE io_price = 0 OR io_amt = 0;

-- ���Ͻ�, 7+8ĩ��, �������
-- �� 3���� �����Ͱ� �ŷ��� 5, 10, 28 seq �����Ͱ� Į������ 0�̴�.
-- �� �������� �ܰ�, �ݾ��� �����ϱ� ���� ������ ��ǰ �����Ͱ� �ִ��� Ȯ���۾�
SELECT * FROM tbl_iolist
WHERE io_pname IN ('���Ͻ�', '7+8ĩ��', '�������');
-- �˻��� �� �ô��� �� 3���� ��ǰ�� �ŷ� ������ �ٸ� ���� ����.
-- �ٸ� ������ ã�Ƽ� ���� �Է����� �� ���̴�.
-- ���Ͻ� :1000, ĩ��:2500, �������:4500 ���� ��������

-- ���Ͻ� �ŷ� ������ �ܰ�, �ݾ��� �������ٵ�
-- WHERE io_pname = '���Ͻ�' �� ���� �����ϸ�
-- Ȥ�� �ٸ� ����, ���� �����Ͱ� ���� ��� ������ ������ ����ų�� �ִ�.
-- �ݵ�� PK Į������ ��ȸ�ϰ� PK Į������ WHERE ���� �������
UPDATE tbl_iolist
SET io_price = 1000, -- �ܰ�
    io_amt = io_qty * 1000 -- �ݾ�(���� * �ܰ�)
WHERE io_seq = 5;

-- 7+8 ġ��
UPDATE tbl_iolist
SET io_price = 2500, -- �ܰ�
    io_amt = io_qty * 2500 -- �ݾ�(���� * �ܰ�)
WHERE io_seq = 10;

-- ���� ���
UPDATE tbl_iolist
SET io_price = 4500, -- �ܰ�
    io_amt = io_qty * 4500 -- �ݾ�(���� * �ܰ�)
WHERE io_seq = 28;

SELECT * FROM tbl_iolist
WHERE io_price = 0 OR io_amt = 0;

SELECT * FROM tbl_iolist
WHERE io_qty = 0;

-- ����������
--      ����, ���Դܰ�, ����ܰ�, ���Աݾ�, ����ݾ� ���� Į���� �и��Ͽ� ����� �Դ�.
--      �̷��� ������ �����ʹ� �� Į���� NULL���� �����Ͽ�, �پ��� ������ �����Ҷ�
--      ������ ����ų �� �ִ�.

-- ��ȯ�� ������
--      ����, �ܰ�, �ݾ� �������� Į���� �����۾��� �����ߴ�.
--      Į������ �и��� ������ ���� Į���� �����ϰ� �����͸� �����ϴ� ���� ���������� ��3����ȭ�� �Ǿ���

-- ��ȯ�� �����͸� �����Ͽ�
--      ���԰� ������ �����Ͽ� ���� �ʹ� �Ҷ�
--      (�ŷ�ó,  ����, ���Դܰ�, ���Աݾ�, ����ܰ�, ����ݾ� �������� ���� ������)
--      �� �����ʹ� PIVOT ���·� ��ȯ�� �ؾ� �Ѵ�.

SELECT * FROM tbl_iolist
-- WHERE (io_seq > 0 AND io_seq <= 10) OR (io_seq >= 300 AND io_seq <= 310)
ORDER BY io_dname ;

SELECT io_dname, io_inout, io_qty, io_price, io_amt FROM tbl_iolist
-- WHERE (io_seq > 0 AND io_seq <= 10) OR (io_seq >= 300 AND io_seq <= 310)
ORDER BY io_dname ;

-- PIVOT���� ������ ���ĺ���
--      ���� ����ܰ� �� �ܰ�(io_price) Į���� ���� ����Ǿ� �ִ�.
--      �� ���� io_inout Į���� ���� �𸣸� �������� �������� ������ ��ƴ�.
--      ���� �Ź� io_inout Į���� ���� ǥ���ؾ߸� �������� �������� ������ �ȴ�.
--      �׷��� ������ ���� ���� io_inout Į���� ���� �������� �ϴ� DECODE �Լ��� ����Ͽ�
--      �ܰ� �κ��� ���Դܰ�, ����ܰ��� �и��Ͽ� �����ֵ��� Query�� �ۼ��Ͽ���.

-- ���� io_inout Į���� ���� ���� ���� �����Ͱ� ���Ե���������, ���ⵥ�������� �˱� ���� �Ǿ���.
SELECT io_dname, io_qty, 

        -- ���Դܰ�(�������� ����Į��) Į���� �����͸� �����ص�
        -- ���� io_inout Į���� ���� '����' �̸�, io_price Į���� ���� ǥ���ϰ�
        -- �׷��� ������ 0�� ǥ���϶�
        DECODE(io_inout,'����',io_price,0) AS ���Դܰ�, 
        DECODE(io_inout,'����',io_amt,0) AS �����հ�,
        DECODE(io_inout,'����',io_price,0) AS ����ܰ�,
        DECODE(io_inout,'����',io_amt,0) AS �����հ�

FROM tbl_iolist
WHERE (io_seq > 0 AND io_seq <= 10) OR (io_seq >= 300 AND io_seq <= 310)
ORDER BY io_dname ;

-- "�ŷ�ó����" ���԰� ������ �����Ͽ� ���� �ִ� ������ �ϼ��ߴ�.
--      �ŷ�ó���� ���԰� ������ �հ踦 ����� ���� �ʹ�.
-- �� ������(�ϳⰣ �ŷ�����)���� �ŷ����� �� ���Աݾ�, �� ����ݾ��� ����غ��� �ʹ�.

-- 1. "�ŷ�ó����" �ŷ������� ������ �ݺ��̷�� �����Ƿ� �ŷ�ó���� ������ ��Ÿ�� ���̴�.
--      �� �����͸� �ŷ����� �����־�� �Ѵ�.
--      GROUP BY io_dname
-- 2. ��ü ����ݾװ� ���Աݾ��� ǥ���ϴ� ����Į��(����ݾ�, ���Աݾ��� �����)��
--      ��� �Լ��� �����ش�.
SELECT io_dname, 

        SUM(DECODE(io_inout,'����',io_amt,0)) AS �����հ�,
        SUM(DECODE(io_inout,'����',io_amt,0)) AS �����հ�

FROM tbl_iolist
-- WHERE (io_seq > 0 AND io_seq <= 10) OR (io_seq >= 300 AND io_seq <= 310)
GROUP BY io_dname
ORDER BY io_dname ;

-- ���� �ŷ�ó���� �����հ�� �����հ踦 ��������
-- �� �ŷ�ó���� �󸶸�ŭ�� ������ �־����� ���� ���� �;�����.
-- ���ͱ� : �����հ� - �����հ� �� ������ �ϸ� �ȴ�.
SELECT io_dname, 

        SUM(DECODE(io_inout,'����',io_amt,0)) AS �����հ�,
        SUM(DECODE(io_inout,'����',io_amt,0)) AS �����հ�,
        SUM(DECODE(io_inout,'����',io_amt,0)) - SUM(DECODE(io_inout,'����',io_amt,0)) AS ���ͱ�

FROM tbl_iolist
-- WHERE (io_seq > 0 AND io_seq <= 10) OR (io_seq >= 300 AND io_seq <= 310)
GROUP BY io_dname
ORDER BY io_dname ;

-- 00 ȸ�翡�� 2019�� 1�⵿�� �� ����, �Ѹ���, �� ������ �󸶳� �߻��ߴ��� �˰�ʹ�
SELECT SUM(DECODE(io_inout,'����',io_amt,0)) AS �����հ�,
        SUM(DECODE(io_inout,'����',io_amt,0)) AS �����հ�,
        SUM(DECODE(io_inout,'����',io_amt,0)) - SUM(DECODE(io_inout,'����',io_amt,0)) AS ���ͱ�

FROM tbl_iolist
-- WHERE (io_seq > 0 AND io_seq <= 10) OR (io_seq >= 300 AND io_seq <= 310)
ORDER BY io_dname ;






