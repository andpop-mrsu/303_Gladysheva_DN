insert into users(name, lastname, email, register_date, gender, occupation_id)
values("Daria", "Gladysheva", "dgladysheva@gmail.com", date("now"), "female", (select id from occupations as o where o.title = "student"));

insert into users(name, surname, email, register_date, gender, occupation_id)
values("Irina", "Guskova", "iguskova@gmail.com", date("now"), "female", (select id from occupations as o where o.title = "student"));

insert into users(name, lastname, email, register_date, gender, occupation_id)
values("Danil", "Dudorov", "ddudorov@gmail.com", date("now"), "male", (select id from occupations as o where o.title = "student"));

insert into users(name, lastname, email, register_date, gender, occupation_id)
values("Yulia", "Zavaryukhina", "yzavaryukhina@gmail.com", date("now"), "female", (select id from occupations as o where o.title = "student"));

insert into users(name, lastname, email, register_date, gender, occupation_id)
values("Anastasia", "Inshakova", "ainshakova@gmail.com", date("now"), "female", (select id from occupations as o where o.title = "student"));

insert into movies(title, year) 
values("Venom 2", 2021);

insert into genres_of_movies(movie_id, genre_id) 
values(
(select id from movies where movies.title = "Venom 2" and movies.year = 2021),
(select id from genres where and genres.genre = "Comedy"), 
); 

insert into ratings(user_id, movie_id, rating, 'timestamp')
values(
(select id from users where users.email = "dgladysheva@gmail.com"), 
(select id from movies where movies.title = "Venom 2" and movies.year = 2021),
4.0,
strftime('%s','now')); 

insert into tags(user_id, movie_id, tag, timestamp)
values(
(select id from users where users.email = "dgladysheva@gmail.com"), 
(select id from movies where movies.title = "Venom 2" and movies.year = 2021),
"blood",
strftime('%s','now'));

insert into movies(title, year) 
values("Hitman's Wife's Bodyguard", 2021);

insert into genres_of_movies(movie_id, genre_id) 
values(
(select id from movies where movies.title = "Hitman's Wife's Bodyguard" and movies.year = 2021),
(select id from genres where and genres.genre = "Comedy"), 
);

insert into ratings(user_id, movie_id, rating, 'timestamp')
values(
(select id from users where users.email = "dgladysheva@gmail.com"), 
(select id from movies where movies.title = "Hitman's Wife's Bodyguard" and movies.year = 2021),
3.0,
strftime('%s','now')); 

insert into tags(user_id, movie_id, tag, timestamp)
values(
(select id from users where users.email = "dgladysheva@gmail.com"), 
(select id from movies where movies.title = "Hitman's Wife's Bodyguard" and movies.year = 2021),
"blood",
strftime('%s','now'));

insert into movies(title, year) 
values("Free Guy", 2021);

insert into genres_of_movies(movie_id, genre_id) 
values(
(select id from movies where movies.title = "Free Guy" and movies.year = 2021),
(select id from genres where and genres.genre = "Comedy"), 
);

insert into ratings(user_id, movie_id, rating, 'timestamp')
values(
(select id from users where users.email = "dgladysheva@gmail.com"), 
(select id from movies where movies.title = "Free Guy" and movies.year = 2021),
2.3,
strftime('%s','now')); 

insert into tags(user_id, movie_id, tag, timestamp)
values(
(select id from users where users.email = "dgladysheva@gmail.com"), 
(select id from movies where movies.title = "Free Guy" and movies.year = 2021),
"blood",
strftime('%s','now'));