use movietvshows;

/*1*/
create table InsertedBy (insertID int not null auto_increment,
titleID varchar(5),
creationTime time,
creationDate varchar(20),
createdBy varchar(20),
action varchar(20),
primary key(insertID));

delimiter @@
create trigger titleInsertTrigger
after insert on title
for each row
begin
declare currentUser varchar(50);
select user() into currentUser;
insert into InsertedBy
set action='insert', titleID=new.titleID,
creationTime=now(),
creationDate=date_format(curdate(), '%d %M %Y'),
createdBy=currentUser;
end @@

/*2*/
create table userUpdate (updateID int not null auto_increment,
userID int,
userName varchar(25),
passkey varchar(50),
emailID varchar(50),
action varchar(20),
primary key(updateID));

delimiter @@
create trigger userUpdateTrigger
after update on DbUser
for each row
begin
insert into userUpdate
set action='update', userID=old.userID,
userName=old.userName,
passkey=old.passkey,
emailID=old.emailID;
end @@

/*3*/
create table userInsert (insertID int not null auto_increment,
userID varchar(5),
creationTime time,
creationDate varchar(20),
action varchar(20),
primary key(insertID));

delimiter @@
create trigger userInsertTrigger
after insert on DbUser
for each row
begin
insert into userInsert
set action='insert', userID=new.userID,
creationTime=now(),
creationDate=date_format(curdate(), '%d %M %Y');
end @@

/*4*/
create table userDelete (deleteID int not null auto_increment,
userID varchar(5),
deletionTime time,
deletionDate varchar(20),
action varchar(20),
primary key(deleteID));

delimiter @@
create trigger userDeleteTrigger
after delete on DbUser
for each row
begin
insert into userDelete
set action='delete', userID=old.userID,
deletionTime=now(),
deletionDate=date_format(curdate(), '%d %M %Y');
end @@

/*5*/
delimiter @@
create trigger userUpdateDeleteTrigger
after delete on DbUser
for each row
begin
delete from userUpdate where userID=old.userID;
end @@

drop trigger titleInsertTrigger;
drop trigger userUpdateTrigger;
drop trigger userInsertTrigger;
drop trigger userDeleteTrigger;
drop trigger userUpdateDeleteTrigger;

drop table insertedBy;
drop table userUpdate;
drop table userInsert;
drop table userDelete;