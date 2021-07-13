use movietvshows;

/*1 out can only be used if we have a single row*/
/*delimiter @@
create procedure streamList (in tName text, out StreamingList text)
begin
select ottName into StreamingList from ott where ottID in 
(select ottID from streamingon where titleID in 
(select titleID from title where titleName=tName));
end @@

call streamList('Dark', @SL);
select @SL;*/

/*1*/
delimiter @@
create procedure streamList (in tName text)
begin
select ottName from ott where ottID in 
(select ottID from streamingon where titleID in 
(select titleID from title where titleName=tName));
end @@

call streamList('Titanic');

/*2*/
delimiter @@
create procedure directorTitleList (in dName text)
begin
select titleName from title where titleID in 
(select titleID from movie where directorID in 
(select directorID from director where directorName=dName));
end @@

call directorTitleList('Russo Brothers');

/*3*/
delimiter @@
create procedure actressList (in tName text)
begin
select castName from casting where castID in 
(select castID from actsin where titleID in 
(select titleID from title where titleName=tName) and castID like 'F%');
end @@

call actressList('Scam 1992: The Harshad Mehta Story');

/*4*/
delimiter @@
create procedure genreTitleList (in gName text)
begin
select titleName from title where genreID in 
(select genreID from genre where genreName=gName);
end @@

call genreTitleList('Crime Drama');

/*5*/
delimiter @@
create procedure languageList (in tName text)
begin
select languageName from languages where languageID in 
(select languageID from availablein where titleID in 
(select titleID from title where titleName=tName));
end @@

call languageList('The Dark Knight');

/*6*/
delimiter @@
create procedure maturityList (in maturity text)
begin
declare mRating text;
select concat(maturity, '+') into mRating;
select titleName from title where limitID in 
(select limitID from AgeLimit where limitName=mRating);
end @@

call maturityList('13');