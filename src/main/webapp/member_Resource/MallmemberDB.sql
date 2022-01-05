create database MallmemberDB;

use MallmemberDB;

drop table tblMember;

create table tblMember (
    num          int                    unique  auto_increment,
	uName		char(20)			not null,
    uId			char(20)			not null,
    uPw			char(20)			not null,
    uEmail		char(50)			not null,
    uBirthday	char(20)			not null,
    uPhone     char(20)	         not null,
    uNumber   char(20)          null,
	postcode         char(10)          null,
    extraAddress   char(10)          null,
    address           char(50)          null,
    detailAddress   char(50)          null,
    uGender             char(1)           null, 
    uEmailyn      char(1)                 null,  
    uSmsyn        char(1)                null,       
 constraint		primary key(uId)
);
