-- 여기는 user1 화면입니다
SELECT * FROM tbl_product;
SELECT MIN(p_code) FROM tbl_product;
SELECT MAX(p_code) FROM tbl_product;

INSERT INTO tbl_product (p_code,p_name)
VALUES ('P001','테스트상품');

SELECT * FROM tbl_product WHERE p_code= RPAD('P001',6,' ');
commit;
SELECT RPAD('가',10,'P') FROM DUAL;
/*
    table에서 1개의 칼럼을 pk를 설정할수 없을 경우
    2개 이상의 칼럼을 묶어서 pk로 설정을 한다.
    
    하지만 아래 테이블에서 sc_num, sc_subject를 묶어서
    pk로 설정할 경우 sc_subject 칼럼이 가변문자열인 관계로
    나중에 문제를 일으킬수 있다.
    
    이러한 테이블에서는 데이터와 별도로 SEQ(ID)라는 칼럼을 만들고
    해당칼럼을 일련번호 등을 부여하고 
    PK로 만드는 것이 좋다.
    */

CREATE TABLE TBL_score (
    sc_num char(5),
    sc_subject NVARCHAR2(20),
    sc_score number

);


