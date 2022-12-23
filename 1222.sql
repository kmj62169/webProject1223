CREATE TABLE login1222
(
	userId varchar2(10 char) NOT NULL,
	userPw varchar2(10 char) NOT NULL,
	gender varchar2(100 char) NOT NULL,
	hobbys varchar2(100 char) NOT NULL,
	city varchar2(20 char) NOT NULL,
	memo varchar2(255 char) NOT NULL,
	PRIMARY KEY (userId)
);

desc login1222;

select *from login1222;

drop table login1222;

insert into login1222(userId, userPw, gender, hobbys, city, memo) values ('m1','11','남자','등산','서울','자기소개 m1');
insert into login1222(userId, userPw, gender, hobbys, city, memo) values ('m2','22','여자','게임','서울','자기소개 m2');
insert into login1222(userId, userPw, gender, hobbys, city, memo) values ('m3','33','남자','영화','의정부','자기소개 m3');
commit;
