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

insert into login1222(userId, userPw, gender, hobbys, city, memo) values ('m1','11','����','���','����','�ڱ�Ұ� m1');
insert into login1222(userId, userPw, gender, hobbys, city, memo) values ('m2','22','����','����','����','�ڱ�Ұ� m2');
insert into login1222(userId, userPw, gender, hobbys, city, memo) values ('m3','33','����','��ȭ','������','�ڱ�Ұ� m3');
commit;
