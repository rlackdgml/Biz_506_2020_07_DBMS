SELECT * FROM tbl_member;
delete from tbl_member WHERE m_userid = 'admin';
commit;

update tbl_member set enabled = '1' WHERE m_userid = 'admin';
commit;

SELECT * FROM tbl_member;
SELECT * FROM tbl_authority;

