create database springtest default charset=utf8mb4;
-- use springtest;
-- create table user(uid int(11) primary key,uname varchar(20),usex varchar(10))
use springtest;
-- create table idcard(id int(11) primary key not null auto_increment,code varchar(18) collate utf8mb4_unicode_ci default null);
-- create table person(
-- 	id int(11) not null auto_increment,
--     name varchar(20) collate utf8mb4_unicode_ci default null,
--     age int(11) default null,
--     idcard_id int(11) default null,
--     primary key(id),
--     key idcard_id (idcard_id),constraint idcard_id foreign key(idcard_id) references idcard (id)
-- );
create table userinfo(id varchar(11) primary key,uname varchar(20),usex varchar(10),pwd varchar(20),identity varchar(10));
-- create database shixi default charset=utf8mb4;
-- use shixi;


create table checkinfo(
	uid varchar(11) not null,
    uname varchar(20) collate utf8mb4_unicode_ci default null,
    cid varchar(11) not null,
    check1 int(1) not null,
    created_at timestamp default current_timestamp
);
create table courseinfo(
	cid varchar(11) not null,
    cname varchar(20) collate utf8mb4_unicode_ci default null,
    tid varchar(11) default null,
    tname varchar(20) collate utf8mb4_unicode_ci default null,
    starttime datetime default null,
    endtime datetime ,
    content varchar(20) collate utf8mb4_unicode_ci default null,
    introduce varchar(60) collate utf8mb4_unicode_ci default null,
    parentid int,
    playbackaddress varchar(1000),
    primary key(cid)
);
create table commentinfo(
	uid varchar(11),
    uname varchar(20) collate utf8mb4_unicode_ci,
    cid int,
    cname varchar(20) collate utf8mb4_unicode_ci,
    comments varchar(50) collate utf8mb4_unicode_ci,
    created_at timestamp default current_timestamp,
    commentid bigint AUTO_INCREMENT PRIMARY KEY,
    parentid bigint
)
