-- 기존 멤버 테이블 삭제
drop table member;
drop table member cascade constraints;

-- 회원정보를 저장할 테이블 생성
create table member(
    userid varchar2(10) primary key,
    userpass varchar2(20) not null,
    username varchar2(20) not null
);

-- DDL은 자동 commit이 됨

-- 레코드 삽입
insert into member values('admin', 'admin', '관리자');
insert into member values('aaa', '1234', '홍길동');

commit;

select * from member;

update member set userpass = '1234' where userid = 'admin';

commit;

delete from member where userid = 'aaa';