use movietvshows;

/*Title*/
insert into Title(titleID, titleName, rottenTomatoesRating, imdbRating, releaseYear,
genreID, limitID, adminID)
values ('MO1', 'Forrest Gump', 71, 8.8, 1994, 1, 2, 1),
('MO2', 'Avengers Endgame', 94, 8.4, 2019, 2, 2, 1),
('MO3', 'The Dark Knight', 94, 9.0, 2008, 3, 1, 1),
('MO4', 'Dumb and Dumber', 68, 7.3, 1994, 4, 4, 1),
('MO5', 'Titanic', 89, 7.8, 1997, 5, 5, 1),
('TV1', 'Breaking Bad', 96, 9.5, 2008, 6, 6, 1),
('TV2', 'Sacred Games', 76, 8.7, 2018, 6, 7, 1),
('TV3', 'Brooklyn Nine Nine', 95, 8.4, 2013, 4, 3, 1),
('TV4', 'Dark', 95, 8.8, 2017, 8, 5, 1),
('TV5', 'Scam 1992: The Harshad Mehta Story', null, 9.5, 2020, 7, 3, 1);

/*Movies*/
insert into Movie(titleID, budget, collection, directorID, phID)
values ('MO1', '$55 Million', '$683.1 Million', 1, 1),
('MO2', '$356 Million', '$2.798 Billion', 2, 2),
('MO3', '$185 Million', '$1.005 Billion', 3, 3),
('MO4', '$50 Million', '$169.8 Million', 4, 4),
('MO5', '$200 Million', '$2.195 Billion', 5, 5);

/*TV Shows*/
insert into TVshows(titleID, creatorID)
values ('TV1', 1),
('TV2', 2),
('TV3', 3),
('TV4', 4),
('TV5', 5);

/*Genre*/
insert into Genre(genreID, genreName) 
values (1, 'Drama'),
(2, 'Superhero'),
(3, 'Thriller'),
(4, 'Comedy'),
(5, 'Romantic'),
(6, 'Crime Drama'),
(7, 'Crime'),
(8, 'Sci-Fi');

/*Age Limit*/
insert into AgeLimit(limitID, limitName)
values (1, '12+'),
(2, '13+'),
(3, '14+'),
(4, '15+'),
(5, '16+'),
(6, '17+'),
(7, '18+');

/*OTT*/
insert into OTT(ottID, ottName)
values (1, 'Netflix'),
(2, 'Amazon Prime Video'),
(3, 'Disney+ Hotstar'),
(4, 'Sony Liv'),
(5, 'Hulu'),
(6, 'Zee5');

/*Language*/
insert into Languages(languageID, languageName)
values (1, 'English'),
(2, 'Hindi'),
(3, 'French'),
(4, 'Spanish'),
(5, 'German'),
(6, 'Telugu'),
(7, 'Mandarin'),
(8, 'Swedish'),
(9, 'Persian');

/*Casting*/
insert into Casting(castID, castName)
values ('M1', 'Tom Hanks'),
('M2', 'Robert Downey Jr.'),
('M3', 'Christian Bale'),
('M4', 'Jim Carrey'),
('M5', 'Leonardo De Caprio'),
('M6', 'Bryan Cranston'),
('M7', 'Nawazuddin Siddiqui'),
('M8', 'Andy Samberg'),
('M9', 'Louis Hoffman'),
('M10', 'Pratik Gandhi'),
('F1', 'Robin Wright'),
('F2', 'Scarlett Johansson'),
('F3', 'Maggie Gyllenhaal'),
('F4', 'Rachel Melvin'),
('F5', 'Kate Winslet'),
('F6', 'Anna Gunn'),
('F7', 'Radhika Apte'),
('F8', 'Melissa Fumero'),
('F9', 'Lisa Vicari'),
('F10', 'Shreya Dhanwanthary');

/*Director*/
insert into Director(directorID, directorName)
values (1, 'Robert Zemeckis'),
(2, 'Russo Brothers'),
(3, 'Christopher Nolan'),
(4, 'Peter Farrelly'),
(5, 'James Cameron');

/*Production House*/
insert into ProductionHouse(phID, phName)
values (1, 'Paramount Pictures'),
(2, 'Marvel Studios'),
(3, 'Waner Bros'),
(4, 'New Line Cinema'),
(5, '20th Century Fox');

/*Creator*/
insert into Creator(creatorID, creatorName)
values (1, 'Vince Gilligan'),
(2, 'Vikram Chandra'),
(3, 'Daniel J. Goor'),
(4, 'Baran Bo Odar'),
(5, 'Hansal Mehta');

/*User*/
insert into DbUser(userID, userName, passkey, emailID)
values (1, 'Henry', 'henry123', 'henry@mail.com'),
(2, 'Eddie', 'eddie123', 'eddie@mail.com'),
(3, 'Ashley', 'ashley123', 'ashley@mail.com'),
(4, 'Daniel', 'daniel123', 'daniel@mail.com'),
(5, 'Clara', 'clara123', 'clara@mail.com');
/*(6, 'Susan', 'susan123', 'susan@mail.com');*/

/*Phone Number*/
insert into PhoneNumber(phoneID, userID, phone)
values (1, 1, '7593528475'),
(2, 2, '4238937410'),
(3, 2, '7391034641'),
(4, 3, '7824334231'),
(5, 4, '7784873487'),
(6, 5, '7083744940');

/*Admin*/
insert into DbAdmin(adminID, adminName, passkey, emailID)
values (1, 'Ravi', 'ravi123', 'ravi@mail.com');

/*Acts In*/
insert into ActsIn(actingID, titleID, castID)
values(1,'MO1','M1'),
(2,'MO1','F1'),
(3,'MO2','M2'),
(4,'MO2','F2'),
(5,'MO3','M3'),
(6,'MO3','F3'),
(7,'MO4','M4'),
(8,'MO4','F4'),
(9,'MO5','M5'),
(10,'MO5','F5'),
(11,'TV1','M6'),
(12,'TV1','F6'),
(13,'TV2','M7'),
(14,'TV2','F7'),
(15,'TV3','M8'),
(16,'TV3','F8'),
(17,'TV4','M9'),
(18,'TV4','F9'),
(19,'TV5','M10'),
(20,'TV5','F10');

/*Streaming On*/
insert into StreamingOn(streamID, titleID, ottID)
values(1, 'MO1', 1),
(2, 'MO1', 2),
(3, 'MO2', 1),
(4, 'MO2', 2),
(5, 'MO2', 3),
(6, 'MO3', 1),
(7, 'MO3', 2),
(8, 'MO3', 4),
(9, 'MO4', 1),
(10, 'MO4', 2),
(11, 'MO4', 5),
(12, 'MO5', 1),
(13, 'MO5', 2),
(14, 'TV1', 1),
(15, 'TV1', 2),
(16, 'TV1', 5),
(17, 'TV2', 1),
(18, 'TV2', 2),
(19, 'TV2', 6),
(20, 'TV3', 1),
(21, 'TV3', 2),
(22, 'TV3', 5),
(23, 'TV4', 1),
(24, 'TV5', 4);

/*Available In*/
insert into AvailableIn(availID, titleID, languageID)
values (1, 'MO1', 1),
(2, 'MO1', 2),
(3, 'MO1', 3),
(4, 'MO1', 4),
(5, 'MO2', 1),
(6, 'MO2', 2),
(7, 'MO2', 4),
(8, 'MO2', 5),
(9, 'MO2', 6),
(10, 'MO3', 1),
(11, 'MO3', 2),
(12, 'MO3', 7),
(13, 'MO4', 1),
(14, 'MO4', 2),
(15, 'MO4', 5),
(16, 'MO4', 8),
(17, 'MO5', 1),
(18, 'MO5', 2),
(19, 'MO5', 8),
(20, 'TV1', 1),
(21, 'TV1', 4),
(22, 'TV1', 5),
(23, 'TV1', 9),
(24, 'TV2', 1),
(25, 'TV2', 2),
(26, 'TV3', 1),
(27, 'TV4', 1),
(28, 'TV4', 5),
(29, 'TV5', 2);

/*Watches*/
insert into watches(watchID, titleID, userID)
values(1, 'MO1', 1),
(2, 'TV4', 1),
(3, 'MO2', 2),
(4, 'TV1', 3),
(5, 'TV5', 3),
(6, 'MO2', 4),
(7, 'MO5', 5),
(8, 'TV5', 5);

/*Watchlist*/
insert into watchlist(listID, userID)
values (1, 1),
(2, 2),
(3, 3),
(4, 4),
(5, 5);

/*Contains*/
insert into contain(containID, titleID, listID)
values (1, 'TV4', 1),
(2, 'MO2', 2),
(3, 'TV1', 3),
(4, 'MO2', 4),
(5, 'MO5', 5);
