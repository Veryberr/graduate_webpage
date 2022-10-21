-------- 회원가입 하는 멤버 sql - Info02 --------------
create table Info02(
UserID varchar(30) primary key, 
Password varchar(30) not null,
Name varchar(30) not null,
Number varchar(9)
)
insert into Info02 values('stand','1111','park','202031030')
insert into Info02 values('abcd','1111','lee','202103520')
insert into Info02 values('qwer','1111','kim','202203120')
insert into Info02 values('admin','1111','관리자','')
-- admin 만 사진 업로드 및 댓글 달기 가능
 select * from Info02
---------------------------------------------------------


--------- Q&A 방명록 페이지 ----------------------------------
CREATE TABLE QuesAns(
seq int IDENTITY(1,1)primary key,
userID nvarchar(30),
name  nvarchar(50) NOT NULL,
pwd   nvarchar(50) NOT NULL,
title    nvarchar(100) NOT NULL,
body   nvarchar(max),
ref_id    int default(0),
inner_id  int default(0),
depth    int default(0),
hit       int default(0),
deleted  char(1) default('N'),
wDate   datetime,
fName   nvarchar(50),
fSize     int default(0),
hitDown int default(0))

select * from QuesAns;
drop table QuesAns;
---------------------------------------------------------------

--------------- Menuphoto ----------------------------------------
create table menuphoto(
	imgID int identity(1,1) primary key,
	userID nvarchar(30),	-- 로그인 기능 결합시 필요
	name nvarchar(30) Default ('작성자'),
	pwd nvarchar(50) default (''),
	title nvarchar(50) not null,
	body nvarchar(max),
	fName nvarchar(100),
	hit int Default(0),
	pDate datetime Default(getDate())
)
select * from menuphoto;

------------------------------------------------------------------

----------------
Create Table Note(
	nID int IDENTITY(1,1) primary key,
	userID nvarchar(20),
	name nvarchar(20),
	content nvarchar(max),
	email nvarchar(30),
	nDate datetime default(getDate())
)
select * from Note;
----------------------------------------------------------------------

use master;Create Table schedule(
	seq int Identity(1,1)  Primary Key,
	userID nvarchar(30)  not null,
	sDate date not null,
	sTime nvarchar(12)  not null,
	toDo nvarchar(max) not null,
	hasDone char(1)  Default('N')
	)
select * from schedule