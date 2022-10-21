create table Info2(
  UserID varchar(30) primary key, 
  Password varchar(30) not null,
Name varchar(30) not null,
Phone varchar(30)
)
insert into Info2 values('stand','1111','park','010-1111-1111')
insert into Info2 values('abcd','1111','lee','010-2211-3333')
insert into Info2 values('qwer','1111','kim','010-5555-6666')
insert into Info2 values('admin','1111','관리자','02-587-4260')

select * from Info2