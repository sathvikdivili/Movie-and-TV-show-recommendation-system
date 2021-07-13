use movietvshows;

/*1*/
select t.titleName, c.castName from title t inner join 
actsin a on a.titleID=t.titleID 
left join casting c on c.castID=a.castID where t.titleID like 'MO%';

/*2*/
select t.titleName, c.castName from title t inner join 
actsin a on a.titleID=t.titleID 
left join casting c on c.castID=a.castID where t.titleID like 'TV%';

/*3*/
select t.titleName, o.ottName from title t inner join 
streamingon s on s.titleID=t.titleID left join 
ott o on o.ottID=s.ottID where t.titleID like 'MO%';

/*4*/
select t.titleName, o.ottName from title t inner join 
streamingon s on s.titleID=t.titleID left join 
ott o on o.ottID=s.ottID where t.titleID like 'TV%';

/*5*/
select t.titleName, l.languageName from title t inner join 
availablein a on a.titleID=t.titleID left join 
languages l on l.languageID=a.languageID where t.titleID like 'MO%';

/*6*/
select t.titleName, l.languageName from title t inner join 
availablein a on a.titleID=t.titleID left join 
languages l on l.languageID=a.languageID where t.titleID like 'TV%';

/*7*/
select t.titleName, g.genreName from title t inner join 
genre g on t.genreID=g.genreID where t.titleID like 'MO%';

/*8*/
select t.titleName, g.genreName from title t inner join 
genre g on t.genreID=g.genreID where t.titleID like 'TV%';

/*9*/
select t.titleName, d.directorName from title t inner join 
movie m on t.titleID=m.titleID left join 
director d on d.directorID=m.directorID;

/*10*/
select t.titleName, c.creatorName from title t inner join 
tvshows tv on t.titleID=tv.titleID left join 
creator c on c.creatorID=tv.creatorID;

/*11*/
select t.titleName, age.limitName from title t inner join 
agelimit age on t.limitID=age.limitID where t.titleID like 'MO%';

/*12*/
select t.titleName, age.limitName from title t inner join 
agelimit age on t.limitID=age.limitID where t.titleID like 'TV%';

/*13*/
select t.titleName, ph.phName from title t inner join 
movie m on t.titleID=m.titleID left join 
productionhouse ph on ph.phID=m.phID;

/*14*/
select titleName, imdbRating from title where 
imdbRating in (select max(imdbRating) from title where titleID like 'MO%');

/*15*/
select titleName, imdbRating from title where 
imdbRating in (select max(imdbRating) from title where titleID like 'TV%');

/*16*/
select titleName, releaseYear from title where 
releaseYear<=2000 and titleID like 'MO%'; 

/*17*/
select titleName, releaseYear from title where 
releaseYear>=2000 and titleID like 'TV%';

/*18*/
select * from title where 
titleID like 'MO%' order by rottenTomatoesRating desc;

/*19*/
select * from title where 
titleID like 'TV%' order by rottenTomatoesRating desc;

/*20*/
select t.titleName, g.genreName from title t inner join 
genre g on t.genreID=g.genreID group by genreName;

/*21*/
select * from title where limitID in 
(select limitID from agelimit where limitName='18+');

/*22*/
select * from title where genreID in 
(select genreID from genre where genreName='Crime Drama');

/*23*/
select * from title t where t.titleID in 
(select m.titleID from movie m where phID in 
(select phID from productionhouse where phName="Marvel Studios"));

/*24*/
select * from title where titleID in 
(select titleID from availablein where languageID in 
(select languageID from languages where languageName in 
('German', 'Spanish')));

/*25*/
select * from title where titleID in 
(select titleID from streamingon where ottID in 
(select ottID from ott where ottName='Sony Liv'));