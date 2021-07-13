use movietvshows;

/*1*/
delimiter @@
create function noOfRecords(titleType text)
returns int 
deterministic
begin
declare noRecords int;
declare recordType text;
select concat(titleType, '%') into recordType;
select count(titleID) from title where titleID like recordType into noRecords;
return noRecords;
end @@

select noOfRecords('TV') as NoOfRecords;

/*2*/
delimiter @@
create function noOfYears(tName text)
returns int
deterministic
begin
declare currentYear year(4);
declare titleYear year(4);
select extract(year from current_date()) into currentYear;
select releaseYear from title where titleName=tName into titleYear;
return currentYear-titleYear;
end @@

select noOfYears('Dumb and Dumber') as NoOfYears;

/*3*/
delimiter @@
create function maxRating(gName varchar(25))
returns varchar(50)
deterministic
begin
declare MaxRatingShow varchar(50);
declare MaxImdbRating decimal(2,1);
declare MaxGenre int;
select g.genreID from genre g where g.genreName=gName into MaxGenre;
select max(imdbRating) from title group by genreID having genreID=MaxGenre into MaxImdbRating;
select t.titleName from title t where (t.imdbRating=MaxImdbRating and t.genreID=MaxGenre) 
group by imdbRating into MaxRatingShow; 
return MaxRatingShow;
end @@

select maxRating('Comedy') as MaxRatingShow from title having(count(titleName)>0);

/*4*/
delimiter @@
create function noOfUsers()
returns int 
deterministic
begin
declare noUsers int;
select count(userID) as noOfUsers from DbUser into noUsers;
return noUsers;
end @@

select noOfUsers();

/*5*/
delimiter @@
create function titlesMaturity(lName text)
returns decimal(4,2)
deterministic
begin
declare mRating text;
declare averageRating decimal(4,2);
select concat(lName, '+') into mRating;
select avg(rottenTomatoesRating) from title where limitID in 
(select limitID from AgeLimit where limitName=mRating) into averageRating;
return averageRating;
end@@

select titlesMaturity('13') as AverageRating;

