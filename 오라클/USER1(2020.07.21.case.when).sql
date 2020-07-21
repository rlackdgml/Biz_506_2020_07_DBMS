-- ����� user1 ȭ���Դϴ�.

-- CASE WHEN ������  THEN TRUE �϶��� ELSE false �϶� �� END
-- DECODE(Į��,���ǰ�, true�϶� false�϶�)
SELECT io_bcode,
	SUM(CASE WHEN io_inout = '����' THEN io_amt ELSE  0 END) AS �����հ�,
	SUM(CASE WHEN io_inout = '����' THEN io_amt ELSE 0 END)AS �����հ�
FROM tbl_iolist
GROUP BY io_bcode;

-- ����Ŭ���� ���Ŀ� pk�� �����ϴ� ���
-- ������  pk�� ������ �ߺ� �������� �ʴ´�
-- pk_iolist : ����Ŭ������ ���Ǵ� pk�� ã�� ����
--      Ȥ�� pk�� ������ ���� ������ �ʿ��� �̸�

ALTER TABLE tbl_iolist ADD CONSTRAINT PK_iolist PRIMARY KEY (io_seq,io_date);
ALTER TABLE tbl_iolist DROP PRIMARY KEY ;

CREATE TABLE tbl_test(
    t_seq NUMBER PRIMARY KEY,
    t_name nVARCHAR2(20)
);

-- ����Ŭ���� TABLE�� AUTO_INCREMENT ������ ����.
-- ���� �Ϸù�ȣ�� ���� Į���� ����Ͽ� PK �� ����� �������� ����� ����� ��Ȳ�� �ȴ�.
-- INSERT�� �����Ҷ����� ������ ����� �Ϸù�ȣ���� ��ȸ�ϰ� +1�� �����Ͽ� �ٽ� INSERT �����ϴ� ����
--      �ݺ��ؾ� �ϱ� ������

-- ������ ����Ŭ���� SEQUENCE ��� �ٸ� DBMS�� ���� Ư���� ��ü�� �ִ�.
-- �� ��ü�� ��ü.NEXTVAL �̶�� Ư���� ȣ���ڰ� �մµ�
-- �� ȣ���ڸ� ȣ���Ҷ����� (SELECT,INSERT���) ���ο� ������ �ִ� ��������
-- ������ ������ ��Ģ�� ���� �ڵ� �����Ͽ� ������ �Ѵ�.
-- �� ��ü.MEXTVAL �� ������ �ִ� ���� 
-- INSERT�� �����ҋ� PK�� seqĮ���� �������ϸ� AUTO_INCERMENTȿ���� ���� �ִ�.
CREATE SEQUENCE seq_test
START WITH 1 -- ���ʿ� �����ϴ�  ��
INCREMENT BY 1; -- ȣ��ɶ����� ������ ��

INSERT INTO tbl_test(t_seq,t_name)
VALUES(seq_test.NEXTVAL,'ȫ�浿');

SELECT * FROM tbl_test;


