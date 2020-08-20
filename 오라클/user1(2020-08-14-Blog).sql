-- 여기는 USER1의 작업 화면입니다.



-- 블로그 테이블 생성
CREATE TABLE tbl_blogs(

    bl_seq	NUMBER		PRIMARY KEY,
    bl_user	nVARCHAR2(20)	NOT NULL,	
    bl_date	VARCHAR2(10)	NOT NULL,	
    bl_time	VARCHAR2(10)	NOT NULL,	
    bl_title	nVARCHAR2(125)	NOT NULL,
    bl_contents	nVARCHAR2(2000)	NOT NULL	

);

-- 일련번호생성을 위하여 SEQUEKE를 생성
-- 시작값을 1로 그리고 1씩 증가하는 조건
CREATE SEQUENCE seq_blog
START WITH 1 INCREMENT BY 1;

/*
SQL_Developer와 기타 다른 프로그래밍 프로젝트와 연동을 할때
SQL_Developer에서 insert,update,delete를 수행했음에도 불구하고
프로젝트에서 조회되는 데이터에 반영이 안되는 경우가 있다.

원인
SQL_Developer에서 CUD(Insert,Update,Delete)를 수행하면
실제 로컬스토리지의 Data 직접 적용이 안된다.
변경한 데이터는 메모리 기억장소에 저장되어 있을 뿐이다.

프로그래밍 프로젝트에서 반영된 결과를 가져다 사용할려면
COMMIT 명령을 수행해 주어야 한다.

*/

INSERT INTO tbl_blogs(bl_seq, bl_user, bl_date,bl_time,bl_title,bl_contents)
VALUES(SEQ_BLOG.NEXTVAL,'홍길동','2020-08-14','09:47:00','나의 블로그','블로그를 만들자');

INSERT INTO tbl_blogs(bl_seq,bl_user,bl_date,bl_time,bl_title,bl_contents)
VALUES(SEQ_BLOG.NEXTVAL,'이몽룡','2020-08-14','09:47:01','블로그 축하','블로그개설을 축하 합니다. ');

INSERT INTO tbl_blogs(bl_seq,bl_user,bl_date,bl_time,bl_title,bl_contents)
VALUES(SEQ_BLOG.NEXTVAL,'성춘향','2020-08-14','09:47:02','블로그 축하','블로그개설을 축하 합니다. ');
COMMIT;

SELECT * FROM tbl_blogs;









