create database MallmemberDB;

use MallmemberDB;

create table tblMember (
    num          int                    unique  auto_increment,
	uName		char(20)			not null,
    uId			char(20)			not null,
    uPw			char(20)			not null,
    uEmail		char(50)			not null,
    uBirthday	char(20)			not null,
    uPhone     char(20)	         not null,
  
 constraint		primary key(uId)
);
