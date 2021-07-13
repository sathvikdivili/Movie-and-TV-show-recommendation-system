create database MovieTvShows;

use MovieTvShows;

/*Title*/
create table Title(titleID varchar(5) not null, 
titleName varchar(50),
rottenTomatoesRating tinyint,
imdbRating decimal(2,1),
releaseYear year(4),
genreID int not null,
limitID int not null,
adminID int not null,
primary key(titleID),
foreign key(genreID) references Genre(genreID),
foreign key(limitID) references AgeLimit(limitID),
foreign key(adminID) references DbAdmin(adminID));

/*Movies*/
create table Movie(titleID varchar(5) not null, 
budget varchar(15),
collection varchar(15),
directorID int not null,
phID int not null,
primary key(titleID),
foreign key(directorID) references Director(directorID),
foreign key(phID) references ProductionHouse(phID));

/*TV Shows*/
create table TVshows(titleID varchar(5) not null, 
creatorID int not null,
primary key(titleID),
foreign key(creatorID) references Creator(creatorID));

/*Genre*/
create table Genre(genreID int not null,
genreName varchar(25),
primary key(genreID));

/*Age Limit*/
create table AgeLimit(limitID int not null,
limitName varchar(5),
primary key(limitID));

/*OTT*/
create table OTT(ottID int not null,
ottName varchar(25),
primary key(ottID));

/*Language*/
create table Languages(languageID int not null,
languageName varchar(25),
primary key(languageID));

/*Cast*/
create table Casting(castID varchar(5) not null,
castName varchar(25),
primary key(castID));

/*Director*/
create table Director(directorID int not null,
directorName varchar(25),
primary key(directorID));

/*Production House*/
create table ProductionHouse(phID int not null,
phName varchar(25),
primary key(phID));

/*Creator*/
create table Creator(creatorID int not null,
creatorName varchar(25),
primary key(creatorID));

/*User*/
create table DbUser(userID int not null,
userName varchar(25),
passkey varchar(50),
emailID varchar(50),
primary key(userID));

/*Phone Number*/
create table PhoneNumber(phoneID int not null,
userID int not null,
phone varchar(15),
primary key(phoneID),
foreign key(userID) references DbUser(userID));

/*Admin*/
create table DbAdmin(adminID int not null,
adminName varchar(25),
passkey varchar(50),
emailID varchar(50),
primary key(adminID));

/*Acts In*/
create table ActsIn(actingID int not null,
titleID varchar(5) not null,
castID varchar(5) not null,
primary key(actingID),
foreign key(titleID) references Title(titleID),
foreign key(castID) references Casting(castID));

/*Streaming On*/
create table StreamingOn(streamID int not null,
titleID varchar(5) not null,
ottID int not null,
primary key(streamID),
foreign key(titleID) references Title(titleID),
foreign key(ottID) references OTT(ottID));

/*Available In*/
create table AvailableIn(availID int not null,
titleID varchar(5) not null,
languageID int not null,
primary key(availID),
foreign key(titleID) references Title(titleID),
foreign key(languageID) references Languages(languageID));

/*Watches*/
create table Watches(watchID int not null,
titleID varchar(5) not null,
userID int not null,
primary key(watchID),
foreign key(titleID) references Title(titleID),
foreign key(userID) references DbUser(userID));

/*Watchlist*/
create table Watchlist(listID int not null,
userID int not null,
primary key(listID),
foreign key(userID) references DbUser(userID));

/*Contains*/
create table Contain(containID int not null,
titleID varchar(5) not null,
listID int not null,
primary key(containID),
foreign key(titleID) references Title(titleID),
foreign key(listID) references Watchlist(listID));

