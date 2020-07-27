-- ����� user2 ȭ���Դϴ�.
CREATE TABLE tbl_����(

�й�	CHAR(5),
�����	NVARCHAR2(20),
���� NUMBER

);

SELECT * FROM tbl_����;

-- ǥ�� sql �̿��� PIVOT
-- 1. � Į������ ����Į������ �Ұ��ΰ� : �й�Į���� �������� ��´�.
--      ���� Į���� ���ؼ� GROUP BY �� ����
-- 2. �Į���� GROUP BY�� ������ �ϰ� �Ǹ� ���� Į����
--      ����Լ��� ����ų�, �ƴϸ� GROUP BY�� Į���� �������־�� �Ѵ�.
-- ������ SUM �Լ��� �����ִ� ������ ���
-- �й��� GROUP BY �� ��� ������ ����� �й��� 1���� ���̵��� �ϱ� ����
-- ���Ǵ� �� ������ ������ SUM() �����ش�
-- ���� ���̺� �������� �й�+������ ������ ��ü �����Ϳ��� 1���� ���ڵ常 �����Ѵ�.
-- ���� SUM()�Լ��� ���� �ջ��� �ϴ� �뵵�� �ƴ϶�, 
-- �ܼ��� GRUOP BY�� ����Ҽ� �յ��� �ϴ� �뵵�� ���̴�.
SELECT �й�,
     SUM(CASE WHEN ����� = '����'  THEN ���� ELSE 0 END) AS ����,
     SUM(CASE WHEN ����� = '����'  THEN ���� ELSE 0 END) AS ����,
     SUM(CASE WHEN ����� = '����'  THEN ���� ELSE 0 END) AS ����
    
     
FROM tbl_����
GROUP BY �й�;

-- ����Ŭ�� DECODE() �Լ��� �̿��ؼ�
SELECT �й�,
    SUM(DECODE(�����,'����',����,0)) AS ����,
    SUM(DECODE(�����,'����',����,0)) AS ����,
    SUM(DECODE(�����,'����',����,0)) AS ����
FROM tbl_����
GROUP BY �й�;

-- ����Ŭ 11g ���� �����ϴ� PIVOT ����� ����ϴ� ���
-- PIVOT() : Ư���� Į���� �������� �����͸� PIVOT View ��Ÿ ���� ���� �Լ�
-- PIVOT(sum(��)) : PIVOT���� ������ �����Ͱ��� ����ִ� Į����  SUM()���� ��� ǥ��
-- FRO Į�� (Į������) : 'Į��'�� 'Į����'���� ����(COLUMM)���⳪���Ͽ� ����Į������ �����

SELECT �й�,����,����,����
FROM tbl_����
PIVOT 
    (SUM(����)
    FOR �����  IN ('����'AS ����,'����' AS  ����,'����'AS ����)
)  ����;

CREATE TABLE tbl_�л����� (

    �й�	    CHAR(5) PRIMARY KEY,
    �л��̸�	NVARCHAR2(30) NOT NULL,
    ��ȭ��ȣ	VARCHAR2(20),
    �ּ�	    nVARCHAR2(125),
    �г�	    NUMBER,
    �а�        CHAR(3)
);

SELECT * FROM tbL_�л�����;
-- �й� Į������ ����޴µ�
--      �� Į���� � TABLE�� �ִ� Į������ �𸣰ڴ�
-- JOIN�� �����Ͽ� �ټ��� TABLE�� RELATION�Ǿ�����
--      �ټ��� TABLE�� ���� �̸��� Į���� ������ �߻��ϴ� ����
-- �������� �ۼ��Ҷ��� Į���� prefix�� �ٿ��� �̷� ������ ������
--      ���� ������Ʈ���� �������̺� domain ���� (���� ������ ��� Į��)�� ������
--      prefix�� �����ϴ� ��쵵 ����.
--      �̶��� �Ʒ� ������ �ſ� ���� ���ϰ� �ȴ�.
--      ORA-00918: column ambiguously defined
-- 00918. 00000 -  "column ambiguously defined"

-- �� ������ �����ϱ� ���� 2���� �̻��� TABLE�� JOIN�Ҷ��� TABLE�� alias�� �����ϰ�
--      as.Į�� �������� � table�� Į������ ��Ȯ�� ������ ���־�� �ϴ� ���� ����
-- JOIN, SUBQUERY�� ���鋚 �Ѱ��� ���̺��� ������ ����� ��� �ݵ�� Alias�� �����ϰ�
--      ��Ȯ�� Į���� ������ ������ �Ѵ�.

-- ����Լ��� ������ ���� Į���� �ݵ�� GROUP BY ���
SELECT  SC.�й�,ST.�л��̸�,ST.��ȭ��ȣ,
    SUM(DECODE(SC.�����,'����',SC.����,0)) AS ����,
    SUM(DECODE(SC.�����,'����',SC.����,0)) AS ����,
    SUM(DECODE(SC.�����,'����',SC.����,0)) AS ����
FROM tbl_���� SC
    LEFT JOIN tbl_�л����� ST
        ON ST.�й� = SC.�й�
GROUP BY SC.�й�,ST.�л��̸�,ST.��ȭ��ȣ;

CREATE VIEW view_����PIVOT
AS 
( 
  SELECT * FROM view_����PIVOT

);

SELECT * FROM view_����PIVOT;

SELECT SC.�й�, ST.�л��̸�,SC.����,SC.����,SC.����
FROM view_����PIVOT SC
    LEFT JOIN tbl_�л����� ST
        ON ST.�й� = SC.�й�;
        
SELECT SC.�й�, ST.�л��̸�,SC.����,SC.����,SC.����
FROM(    
    SELECT �й�,����,����,����
        FROM tbl_���� 
        PIVOT( 
            SUM(����)
            FOR �����  IN ('����'AS ����,'����' AS  ����,'����'AS ����)
    ) 
)  SC
    LEFT JOIN tbl_�л����� ST
        ON ST.�й� = SC.�й�
ORDER BY SC.�й�;        