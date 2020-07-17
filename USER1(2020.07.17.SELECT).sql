-- ����� user1 ȭ���Դϴ�.
SELECT * FROM tbl_dept;

-- PROJCTION , SELECTION
-- DB ���п��� ������ ���� DB ���ÿ뼭
-- �ǹ������� ���� ������� �ʴ� �ܾ��̱⵵ �ϴ�.
-- PROJECTION
SELECT d_code , d_name, d_prof
FROM tbl_dept;


-- SELECTION
SELECT * 
FROM tbl_dept
WHERE d_name = '������';

-- ���� �а����̺��� �а����߿� ������ �а��� �������������� ������ �Ϸ��� �Ѵ�.
-- 1. ���� �����ϰ����ϴ� ���ǿ� �´� �����Ͱ� �ִ��� Ȯ��
SELECT * FROM tbl_dept WHERE d_name = '������';
-- 2. SELECTION �� ����� 1���� ���ڵ常 ��Ÿ���� ������ d_name �� pk�� �ƴϴ�.
--    ���⿡�� �����ִ� �����ʹ� ����Ʈ�̴�.
--    UPDATE �Ҷ� d_name = '������' �������� UPDATE�� �����ϸ� �ȵȴ�.
--    UPDATE tbl_dept SET d_NAME = '����������'WHERE d_name = '������'ó��
--    ����� �����ϸ� �ȵȴ�.
-- 3. ��ȸ�� ������� PK�� ���������� �ľ��ؾ� �Ѵ�.

-- 4. PK�� �������� �����͸� UODATE �����ؾ� �Ѵ�.
UPDATE tbl_dept
SET d_name = '����������'
WHERE d_code = 'D001';

SELECT * FROM tbl_dept;

INSERT INTO tbl_dept(d_code, d_name, d_prof)
VALUES ('DO06','������','����');

-- DELETE
--  DBMS �� ��Ű���� ���Ե� Table�߿� ���� ������ �����ϴµ� �ʿ��� Table��
--  ���� Master Data Table�̶�� �Ѵ�.
--  (�л�����,�а�����)
--  Master Data�� �ʱ⿡ INSERT�� ����� �Ŀ� ������ ���ൿ��
--  ������ �����͸� �����ϰų�, �����ϴ� ���� �ּ�ȭ �Ǿ�� �ϴ� �������̴�.
--  Master Data �� Relation�� �Ͽ� �����Ǵ� ���������͵��� ���Ἲ�� ���ؼ�
--  Master Data ������ �ּ�ȭ �ϸ鼭 ���� �ؾ� �Ѵ�.

-- DBMS�� ��Ű���� ���Ե� Table�߿� ���÷� �����Ͱ� �߰�, ����, ������ �ʿ��� 
-- Table�� ���� Work Data Table �̶�� �Ѵ�.
-- (��������)
-- Work Data�� ����� �����Ͱ� �߰��ǰ�, �������� ������ �����Ͽ�
-- ���,���� �� ������ �ۼ��ϴ� �⺻�����Ͱ� �ȴ�.
-- ���, ���� �� ������ �ۼ��� �� �����͸� �����Ͽ����� �̻��� ������
-- �����͸� ����, ������ �����Ͽ� �����ϴ� ������ �̷������.
-- Work Data�� Master Table�� Relation�� �� �����Ͽ�
-- �����͸� INSERT �ϴ� �ܰ���� �߸��� �����Ͱ� �߰��Ǵ� ���� ������ �ʿ䰡 �ִ�.
-- �̶� �����ϴ� �����߿� �ܷ�Ű ���� ������ �ִ�.

SELECT * FROM tbl_score;
INSERT INTO tbl_score(sc_num) VALUES(100);
COMMIT;

UPDATE tbl_student         -- ������ ���̺�
SET sc_kor = 90            -- ������ ��� = ��
WHERE sc_num = '20015' -- ����(Update���� WHERE�� ���û����̳�, �ǹ������� �ʼ��������� �ν�) 

UPDATE tbl_score
SET sc_kor = 90, sc_math = 90 -- �ټ��� Į�� ���� �����ϰ� �Ҷ� Į�� = ��, Į�� = �� ��������
WHERE sc_num = '20015';

SELECT * FROM tbl_score;
SELECT * FROM tbl_score WHERE sc_num = '20015';

UPDATE tbl_score
SER sc_kor = 100;

SELECT * FROM tbl_score;

--  SQL������ CUD(INSERT,UPDATE,DELETE)�� �����ϰ� �� ���Ŀ���
--  Table�� ����� �����Ͱ� ������(���丮��)�� �ݿ��� ���� �ȵȻ����̴�.
--  ���丮���� ������ ������ �ݿ��� �Ǳ�����
--  ROLLBACK ����� �����ϸ� ���泻���� ��� ����(���) �ȴ�.
--  ROLLBACK ����� �߸� �����ϸ�, ���������� ����(CUD) �ʿ��� ������ ����
--  ������ ��ҵǾ� ������ ����ų�� �ִ�.

-- INSERT �� �����ϰ� �� ���Ŀ��� �������� ������ ���������� �ݿ��ɼ� �ֵ���
-- COMMIT ����� �������ִ� ���� ����.
-- UPDATE�� DELETE �� ������ ���� �ݵ�� SELECT �� �����Ͽ�
--    ���ϴ� ����� �� ����Ǿ����� Ȯ�� �ϴ� ���� ����.

ROLLBACK;
SELECT * FROM tbl_score;

-- 20020 �й��� �л��� ���賯 �Ἦ�� �Ͽ� ���� ���ø� �ϰ� ���ߴµ�
-- ������ �ԷµǾ���.
-- �� �л��� ���������ʹ� �����Ǿ�� �Ѵ�.
-- 20020 �л��� ���� ���賯 �Ἦ�� �л����� Ȯ���ϴ� ������ �ʿ��ϴ�.
-- 20020 �л��� �л������� Ȯ���ϰ�, ���� �� �л��� ���������� ��ϵǾ� �ִٸ�
-- ������ ��������.
SELECT * FROM tbl_student WHERE st_num = '20020' ;

-- �Ʒ� Query���� ����������
-- �л������� ���̴µ�, �������� Į�� ������ ��� (null)�� ��Ÿ����
--      �� �м��� ���������� ��ϵ��� ���� ���̴�.
--      ���� �����ϴ� ������ �ʿ����� �ʴ�.
-- �л����� �Բ� �������� Į���� ������ 1���� (null)�� �ƴ� ������ ��Ÿ����
--      ���� �л��� ���������� �����ؾ� �Ѵ�.
SELECT *
FROM tbl_student ST
    LEFT JOIN tbl_score SC
        on ST.st_num = sc.sc_num
WHERE ST.st_num = '20020';

-- sc_num �����Ϳ� ���� ������ �ο��ϸ�
-- DELETE�� �������� ������ ������ ���ų� ������ �ʴ´�.
DELETE FROM tbl_score
WHERE sc_num = '20020';
ROLLBACK;

-- ������������ ���������� ������� ���� ���� �������� �����ΰ�>>
SELECT MAX(sc_kor), MIN(sc_kor)
FROM tbl_score ;

INSERT INTO tbl_score(sc_num,sc_kor) VALUES('20101',49);
 

-- �ְ������� 99��, ���������� 50�̴�
-- �������� ���� �л��� �����ϱ�

SELECT SC.sc_num,ST.st_name,SC.sc_kor
FROM tbl_score SC
    LEFT JOIN tbl_student ST
        ON SC.sc_num = ST.st_num
WHERE sc_kor = 99 OR sc_kor = 50 ;

-----------------------------------
--- SubQuery
-----------------------------------------
-- �ι��̻� SELECT �����ؼ� ����� ������ �ϴ°��
-- ù���� SELECT ����� �ι���  SELECT�� �����Ͽ�
-- ���ÿ� �ι��̻��� SELECT�� �����ϴ� ���
-- Sub Query�� JOIN�� ��� ���������ϴ�.
-- ������ ������ ������ �䱸�Ҷ��� SubQuery�� ����ϴ� ����
-- �������̱⵵ �ϴ�.
-- ���� ����Ŭ ���� ������(���۸�)�߿� join���ٴ� subQuery��
-- ����� �������� ���Ƽ� �ڵ��� �ټ� �����Ѹ鵵 �ִ�.

-- sub query�� ����ϰ� �Ǹ�  SELECT ������ ����Ǳ� ������
-- �ణ�� �ڵ��� ������ �Ǿ ����� ���� �������� ���� �ȴ�.

-- WHERE ������ SubQuery ����ϱ�
-- WHERE Į���� (<=>) 
-- �����ʿ� ��ȣ�� ������ SELEC ������ ���;� �Ѵ�.
-- sub query�� �۵��Ǵ� SELECT ���� �⺻������ 1���� ����� ���;��Ѵ�.
-- sub query���� ����� ����� ���� �������� Į���� ���ǹ��� �ο��ϴ� ���
-- sub query�� method, �Լ��� ȣ���ϴ� �Ͱ� ���� subquery�� return���ִ� ����
-- Į���� ���Ͽ� ���� ������� ����.
SELECT SC.sc_num,ST.st_name,SC.sc_kor
FROM tbl_score SC
    LEFT JOIN tbl_student ST
        ON SC.sc_num = ST.st_num
WHERE sc_kor = 
(
    SELECT MAX(sc_kor) FROM tbl_score
)

OR SC.sc_kor = 
(
    SELECT MIN(sc_kor) FROM tbl_score
);

-- ���������� ����� ���ϰ�
-- ����������� ���� ������ ���� �л����� ����Ʈ�� ���ϰ� �ʹ�.

SELECT AVG(sc_kor)
FROM tbl_score;

SELECT *
FROM tbl_score
WHERE sc_kor >= 74.54;


SELECT *
FROM tbl_score
WHERE sc_kor >=
(
    SELECT AVG(sc_kor) FROM tbl_score
);

-- �� �л��� ���� ����� ���ϰ� 
-- ��ü�л��� ����� ���Ͽ�
-- �� �л��� ��������� ��ü�л��� ����������� ���� ����Ʈ�� ��ȸ�Ͻÿ�


-- �л����
SELECT sc_num ,(sc_kor + sc_eng + sc_math + sc_music + sc_art) /5 AS ��� 
FROM tbl_score;

-- ���� ��ü���
SELECT       
        AVG(sc_kor)AS �������,
        AVG(sc_eng)AS �������,
        AVG(sc_math)AS �������,
        AVG(sc_music)AS �������,
        AVG(sc_art) AS �̼����
FROM tbl_score
WHERE sc_num BETWEEN '20001' AND '20100';

--��ü���
SELECT AVG((sc_kor + sc_eng + sc_math + sc_music + sc_art) /5) AS ��� 
FROM tbl_score;

-- SELECT Query ���� ����Ǵ� ����
-- 1. FROM ���� ����Ǿ� tbl_score ���̺��� ����(Į������) �� ��������
-- 2. WHERE ���� ����Ǿ ���� ������ �����͸� ����
-- 3. GROUP BY �� ����Ǿ� �ߺ��� �����͸� ��� �ϳ��� �����.
-- 4. SELECT �� ������ Į���� ���� ä���ְ�,
-- 5. SELECT �� ���ǵ� ������ ���� ����� �����غ�
-- 6. ORDER BY �� ��� ������ ����ǰ� ���� �������� ���� ����Ǿ� ������ �Ѵ�.


-- ����Ʈ

-- WHERE ��� GROUP BY �������� Alias�� ������ Į�� �̸��� ����� �� ����.
-- ORDER BY ������ Alias�� ������ Į�� �̸��� ����� �� �ִ�.
SELECT sc_num,(sc_kor + sc_eng + sc_math + sc_music + sc_art) /5 AS ��� 
FROM tbl_score
WHERE (sc_kor + sc_eng + sc_math + sc_music + sc_art) /5 >74.80;

-- �Ǵٸ� ����Ʈ

SELECT sc_num,(sc_kor + sc_eng + sc_math + sc_music + sc_art) /5 AS ��� 
FROM tbl_score
WHERE (sc_kor + sc_eng + sc_math + sc_music + sc_art) /5 >=
(

   SELECT AVG((sc_kor + sc_eng + sc_math + sc_music + sc_art) /5) AS ��� 
   FROM tbl_score
   

);

-- ���� Query�� Ȱ���Ͽ�
-- ����� ���ϴ� ������ �״�� �����ϰ�
-- �й��� 20020 ������ �л��鸸 �����ϱ�

SELECT sc_num,(sc_kor + sc_eng + sc_math + sc_music + sc_art) /5 AS ��� 
FROM tbl_score
WHERE (sc_kor + sc_eng + sc_math + sc_music + sc_art) /5 >=
(

   SELECT AVG((sc_kor + sc_eng + sc_math + sc_music + sc_art) /5) AS ��� 
   FROM tbl_score
   
)AND sc_num < 20020;

-- �������̺��� �й��� ���ڿ��� �ڸ��� �����Ͽ�
-- �� ��Ī�� �����ϱ�

SELECT SUBSTR(sc_num,1,4) AS ��
FROM tbl_score
GROUP BY SUBSTR(sc_num,1,4)
ORDER BY ��;

-- ����� �ݸ�Ī�� '2006' ���� ���� ���� ���� �ݸ� ����


-- ����� �ݸ�Ī�� '2006' ���� ���� ���� ���� �ݸ� ����
-- HAVING : ������ WHERE �ſ����ϴ�.
--      �ϴ����� GROUP BY ���̰ų�, ����Լ��� �������� �������
--      WHERE ������ �����ϴ� Ű����
SELECT SUBSTR(sc_num,1,4) AS ��
FROM tbl_score
GROUP BY SUBSTR(sc_num,1,4)
HAVING SUBSTR(sc_num,1,4) < '2006'
ORDER BY ��;


-- ������ ����� ���ϴ� �ڵ�
SELECT SUBSTR(sc_num,1,4) AS ��, ROUND(AVG((sc_kor + sc_eng+ sc_math)/3)) �����
FROM tbl_score
GROUP BY SUBSTR(sc_num,1,4)
HAVING ROUND(AVG((sc_kor + sc_eng+ sc_math)/3)) >=
(

SELECT ROUND(AVG((sc_kor + sc_eng+ sc_math)/3)) FROM tbl_score

)
ORDER BY ��;

-- 2000~2005������ A �׷�, 2006~2010������ B�׷��϶�
-- �ݸ��� '2005' ����, A �׷��� �ݵ� ����� ���ϱ�

SELECT SUBSTR(sc_num,1,4) AS ��, ROUND(AVG((sc_kor + sc_eng+ sc_math)/3)) �����
FROM tbl_score
GROUP BY SUBSTR(sc_num,1,4)
HAVING SUBSTR(sc_num,1,4) <= '2005'
ORDER BY ��;

-- HAVING �� WHERE
-- �ΰ��� ��� ����� SELECTON�ϴ� ���ǹ��� �����ϴ� ����̴�.
-- HAVING �� �׷����� ���̰ų� ����Լ��� ����� ����� �������� �����ϴ� ����̰Ű�
-- WHERE �ƹ��� ������ ����Ǳ� ���� ���� �����͸� �������� �����ϴ� ����̴�.
-- ��¿������ ��� ����� �����Ҷ��� HAVING�� ����Ѵ�.
-- WHERE���� ������ �����Ͽ� �����͸� ���� �� �� ������ �����Ҽ� �ִٸ�
-- �׻� �ѱ� ����� �켱 �������� ��������
-- HAVING WHERE ������ ������ ��ü�����͸� ���� ����� ������ ������ ��
-- ������ �����ϹǷ� ��������� WHERE ������ �����ϴ� �� ���� ������.

SELECT SUBSTR(sc_num,1,4) AS ��, ROUND(AVG((sc_kor + sc_eng+ sc_math)/3)) �����
FROM tbl_score
WHERE SUBSTR(sc_num,1,4) <= '2005'
GROUP BY SUBSTR(sc_num,1,4)
ORDER BY ��;


    
    
    











    
       
        
        










