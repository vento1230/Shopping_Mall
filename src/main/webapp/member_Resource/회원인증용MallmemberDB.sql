########
### memberDB, Ch13 회원인증 SQL
########

alter table tblMember
add column num    int    unique  auto_increment;

desc tblMember;

-- 회원 조회
select * from tblMember order by num desc limit 0, 10;


desc tblZipCode;
-- PK =>  고유식별 컬럼(데이터가 서로 구분되는 유일값)
--            + 자동으로 인덱스(select 에서 데이터가 많을 때, 속도저하를 막아줌)

-- 우편번호 조회
select * from tblZipCode 
where area3 like '%대현동%' 
order by zipCode limit 0, 10;

select * from tblZipCode 
where area3 like '%하왕십리%'; 

select * from tblZipCode order by zipCode limit 0, 2000;

insert into tblMember  values (
1, '철구','Test', '1234', 'test@naver.com',
'19910527', '010-4566-2322'

);

-- 회원 조회
use mallmemberdb;
select * from tblMember order by num ;

update tblMember set uNumber='031-971-0741' where num = 3;

select uId from tblMember where uId="chulgu" and uPw="cjfrn123!";

set sql_safe_updates = 0;
update tblMember set uGender='1' where num = 1;