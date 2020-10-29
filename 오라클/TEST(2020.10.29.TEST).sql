-- TEST1 사용자
-- 거의 대부분의 DBMS 공통의 사용되는 명령어들

-- 데이터를 저장할 Table, Entity 생성

CREATE TABLE tbl_test(
    t_num CHAR(5),    -- 문자열 (5)
    t_name NVARCHAR2(20),  --한글포함 문자열 20자
    t_tel VARCHAR2(20)      -- 영문,숫자 전용 문자열 20자
    
);

-- 데이터 저장하기
INSERT INTO tbl_test(t_num, t_name, t_tel)VALUES('S0001','홍길동','010-111-1111');
INSERT INTO tbl_test(t_num, t_name, t_tel)VALUES('S0002','이몽룡','010-111-1112');
INSERT INTO tbl_test(t_num, t_name, t_tel)VALUES('S0003','성춘향','010-111-1113');
INSERT INTO tbl_test(t_num, t_name, t_tel)VALUES('S0004','장보고','010-111-1114');
INSERT INTO tbl_test(t_num, t_name, t_tel)VALUES('S0005','장영실','010-111-1115');

-- 데이터가 모두 잘 저장되었나 확인
SELECT * FROM tbl_test;


-- INSERT 한 데이터중에 이름이 이몽룡인 데이터가 있는가 확인하기
-- 조건검색
SELECT * FROM tbl_test WHERE t_name = '이몽룡';

-- 번호가 S0004인 사람이 누구인가 알아보고 싶을때
SELECT * FROM tbl_test WHERE t_num = 'S0004';

-- 이름이 성춘향인 사람의 전화번호가 010-222-2222 으로 변경되었다
-- 저장된 데이터를 수정하고 싶다.

UPDATE tbl_test SET t_tel = '010-222-2222' WHERE t_name='성춘향';
SELECT * FROM tbl_test;

-- 성춘향의 전화번호를 바꾸려고 할때
-- 혹시 데이터중에 성춘향의 데이터가 2개 이상 있으면
-- 이름으로 UPDATE하면 문제가 발생할수 있다.
-- 바꾸고자 하는 성춘향의 데이터를 조건검색하여 
-- 번호를 확인하고 바꾸는 것이 좋다.
SELECT * FROM tbl_test WHERE t_name ='성춘향';
UPDATE tbl_test SET t_tel ='010-333-3333' WHERE t_num ='S0003';

-- 필요없는 데이터는 삭제 수행한다.
SELECT * FROM tbl_test WHERE t_name = '장영실';
DELETE FROM tbl_test WHERE t_num ='S0005';