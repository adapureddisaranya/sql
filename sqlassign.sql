create database movie ;

use movie ;

create table directors ( director_id int primary key , director_name varchar(30) ) ;
create table movies ( movie_id int primary key , title varchar(20) , release_yr int , director_id int , foreign key(director_id) references directors(director_id) ) ; 
create table genres ( genre_id int primary key , genre_name varchar(30) ) ;
create table movie_genres(movie_id int,genre_id varchar,foreign key(movie_id) references movies(movie_id),foreign key(genre_id) references genres(genre_id));

insert into directors values ( 01 , 'Puri jagannadh' ) , ( 02 , 'Rajamouli' ) , ( 03 , 'Gunashekhar' ) , ( 04 , 'Trivikram' ) , ( 05 , '' ) ; 
insert into movies values ( 1 , 'Pokiri' , 2006 , '01' ) , ( 2 , 'virupaksha' , 2023 , '05' ) ,  (3 , 'Shekuntala' , 2023  , 03 ) , ( 4 , 'Athadu' , 2005 , '04' ) , ( 5 , 'RRR' , 2023 ,'02' ) ;
insert into genres values ( 101 , 'action ' ), ( 102 , 'horror' ) , ( 103 , 'romance' ) , ( 104 , 'friendship' ) ;
insert into movie_genres values ( 1 , 101 ) , ( 2 , 102 ) , ( 3 , 103 ) , ( 4 , 101 ) , ( 5 , 104 ) ; 

select m.title , d.director_name from movies m  JOIN directors d on m.director_id = d.director_id ;
select m.title , m.release_yr , d.director_name from movies m LEFT JOIN directors d on m.director_id = d.director_id ; 
select d.director_name , m.title from directors d  JOIN movies m on d.director_id = m.director_id and d.director_name!='' ; 
select m.title , m.release_yr , d.director_name from movies m JOIN directors d on m.director_id = d.director_id and d.director_name!=''; 
select movies.title , genres.genre_name from movie_genres JOIN movies on movies.movie_id = movie_genres.movie_id join  genres on movie_genres.genre_id = genres.genre_id ;



