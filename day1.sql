select now(); -- 현재시간을 출력한다.
INSERT INTO user_info values ('qwer1', '1234', '양수영', 'aaa@aaa.com', '1980-12-31', 'fb', now());
INSERT INTO user_info values ('asdf', '1234', '양수영', 'aaa@aaa.com', '1980-12-31', 'fb', now());

select * from user_info;

update user_info set pwd='4444', email='ccc@bbb.com' where id='asdf1';

-- Auto Commit - 명령을 수행할 때마다 commit
-- commit - 작업 내용을 DB에 반영
-- rollback - 작업 내용을 되돌리는것. 이전 커밋 상태로(undo)
-- delete from user_info; -- where id='asdf'; -- 행단위로 데이터를 삭제

delete from user_info where id='asdf';


