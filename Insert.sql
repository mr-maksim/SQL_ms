-- Added Artist
INSERT INTO public.artist ("name")
	VALUES ('Драгни');
INSERT INTO public.artist ("name")
	VALUES ('Caravan Pallace');
INSERT INTO public.artist ("name")
	VALUES ('HENSY');
INSERT INTO public.artist ("name")
	VALUES ('LINKIN PARK');
INSERT INTO public.artist ("name")
	VALUES ('5nizza');
INSERT INTO public.artist ("name")
	VALUES ('2rbina 2rista');
INSERT INTO public.artist ("name")
	VALUES ('Tropkillaz');
INSERT INTO public.artist ("name")
	VALUES ('Morandi');

-- Added Album
INSERT INTO public.album (title,reliased)
	VALUES ('Не валяй дурака',2018);
INSERT INTO public.album (title,reliased)
	VALUES ('Пацаны с гитарой',2020);
INSERT INTO public.album (title,reliased)
	VALUES ('Panic',2012);
INSERT INTO public.album (title,reliased)
	VALUES ('Жиза',2021);
INSERT INTO public.album (title,reliased)
	VALUES ('One more light',2017);
INSERT INTO public.album (title,reliased)
	VALUES ('Recharged',2013);
INSERT INTO public.album (title,reliased)
	VALUES ('КУ',2017);
INSERT INTO public.album (title,reliased)
	VALUES ('Brutality',2012);
INSERT INTO public.album (title,reliased)
	VALUES ('Dame Mais',2018);
INSERT INTO public.album (title,reliased)
	VALUES ('N3xt',2007);

--Link Album
INSERT INTO public.album_artist (album_id,artist_id)
	VALUES (1,1);
INSERT INTO public.album_artist (album_id,artist_id)
	VALUES (2,1);
INSERT INTO public.album_artist (album_id,artist_id)
	VALUES (3,2);
INSERT INTO public.album_artist (album_id,artist_id)
	VALUES (4,3);
INSERT INTO public.album_artist (album_id,artist_id)
	VALUES (5,4);
INSERT INTO public.album_artist (album_id,artist_id)
	VALUES (6,4);
INSERT INTO public.album_artist (album_id,artist_id)
	VALUES (7,5);
INSERT INTO public.album_artist (album_id,artist_id)
	VALUES (8,6);
INSERT INTO public.album_artist (album_id,artist_id)
	VALUES (9,7);
INSERT INTO public.album_artist (album_id,artist_id)
	VALUES (10,8);

-- Added Track
INSERT INTO public.track (title,album_id,duration)
	VALUES ('Грязная посуда',1,187);
INSERT INTO public.track (title,album_id,duration)
	VALUES ('Эмпайер',1,149);
INSERT INTO public.track (title,album_id,duration)
	VALUES ('Море',1,186);
INSERT INTO public.track (title,album_id,duration)
	VALUES ('Лакоста',2,209);
INSERT INTO public.track (title,album_id,duration)
	VALUES ('Гаражи',2,253);
INSERT INTO public.track (title,album_id,duration)
	VALUES ('Maniac',3,246);
INSERT INTO public.track (title,album_id,duration)
	VALUES ('Queens',3,243);
INSERT INTO public.track (title,album_id,duration)
	VALUES ('Ну привет',4,139);
INSERT INTO public.track (title,album_id,duration)
	VALUES ('К маме',4,143);
INSERT INTO public.track (title,album_id,duration)
	VALUES ('Nobody Can Save Me',5,207);
INSERT INTO public.track (title,album_id,duration)
	VALUES ('Heavy (feat. Kiiara)',5,150);
INSERT INTO public.track (title,album_id,duration)
	VALUES ('A LIGHT THAT NEVER COMES',6,209);
INSERT INTO public.track (title,album_id,duration)
	VALUES ('Самолёт',7,181);
INSERT INTO public.track (title,album_id,duration)
	VALUES ('Опана',7,153);
INSERT INTO public.track (title,album_id,duration)
	VALUES ('Бруталити',8,195);
INSERT INTO public.track (title,album_id,duration)
	VALUES ('Dame Mais',9,189);
INSERT INTO public.track (title,album_id,duration)
	VALUES ('Africa',10,249);
INSERT INTO public.track (title,album_id,duration)
	VALUES ('A Place for My Head',5,183);

-- Added Genre
INSERT INTO public.genre (title)
	VALUES ('Rock');
INSERT INTO public.genre (title)
	VALUES ('Electronic');
INSERT INTO public.genre (title)
	VALUES ('Pop');
INSERT INTO public.genre (title)
	VALUES ('Alternativ');
INSERT INTO public.genre (title)
	VALUES ('Reggae');

--Link Genre
INSERT INTO public.genre_artist (genre_id,artist_id)
	VALUES (1,1);
INSERT INTO public.genre_artist (genre_id,artist_id)
	VALUES (2,2);
INSERT INTO public.genre_artist (genre_id,artist_id)
	VALUES (3,3);
INSERT INTO public.genre_artist (genre_id,artist_id)
	VALUES (1,4);
INSERT INTO public.genre_artist (genre_id,artist_id)
	VALUES (5,5);
INSERT INTO public.genre_artist (genre_id,artist_id)
	VALUES (4,6);
INSERT INTO public.genre_artist (genre_id,artist_id)
	VALUES (2,7);
INSERT INTO public.genre_artist (genre_id,artist_id)
	VALUES (2,8);
INSERT INTO public.genre_artist (genre_id,artist_id)
	VALUES (3,4);

--Added Compilation
INSERT INTO public.compilation (title,reliased)
	VALUES ('Vol 1',2022);
INSERT INTO public.compilation (title,reliased)
	VALUES ('Vol 2',2021);
INSERT INTO public.compilation (title,reliased)
	VALUES ('Vol 3',2020);
INSERT INTO public.compilation (title,reliased)
	VALUES ('Vol 4',2019);
INSERT INTO public.compilation (title,reliased)
	VALUES ('Vol 5',2018);
INSERT INTO public.compilation (title,reliased)
	VALUES ('Vol 6',2017);
INSERT INTO public.compilation (title,reliased)
	VALUES ('Vol 7',2016);
INSERT INTO public.compilation (title,reliased)
	VALUES ('Vol 8',2015);

--Link Compilation
INSERT INTO public.compilation_track (compilation_id,track_id)
	VALUES (1,3);
INSERT INTO public.compilation_track (compilation_id,track_id)
	VALUES (1,4);
INSERT INTO public.compilation_track (compilation_id,track_id)
	VALUES (1,13);
INSERT INTO public.compilation_track (compilation_id,track_id)
	VALUES (1,17);
INSERT INTO public.compilation_track (compilation_id,track_id)
	VALUES (1,8);
INSERT INTO public.compilation_track (compilation_id,track_id)
	VALUES (2,1);
INSERT INTO public.compilation_track (compilation_id,track_id)
	VALUES (2,8);
INSERT INTO public.compilation_track (compilation_id,track_id)
	VALUES (2,9);
INSERT INTO public.compilation_track (compilation_id,track_id)
	VALUES (2,16);
INSERT INTO public.compilation_track (compilation_id,track_id)
	VALUES (2,2);
INSERT INTO public.compilation_track (compilation_id,track_id)
	VALUES (3,3);
INSERT INTO public.compilation_track (compilation_id,track_id)
	VALUES (3,4);
INSERT INTO public.compilation_track (compilation_id,track_id)
	VALUES (3,14);
INSERT INTO public.compilation_track (compilation_id,track_id)
	VALUES (3,16);
INSERT INTO public.compilation_track (compilation_id,track_id)
	VALUES (3,1);
INSERT INTO public.compilation_track (compilation_id,track_id)
	VALUES (4,5);
INSERT INTO public.compilation_track (compilation_id,track_id)
	VALUES (4,4);
INSERT INTO public.compilation_track (compilation_id,track_id)
	VALUES (4,13);
INSERT INTO public.compilation_track (compilation_id,track_id)
	VALUES (4,7);
INSERT INTO public.compilation_track (compilation_id,track_id)
	VALUES (4,8);
INSERT INTO public.compilation_track (compilation_id,track_id)
	VALUES (5,13);
INSERT INTO public.compilation_track (compilation_id,track_id)
	VALUES (5,8);
INSERT INTO public.compilation_track (compilation_id,track_id)
	VALUES (5,11);
INSERT INTO public.compilation_track (compilation_id,track_id)
	VALUES (5,17);
INSERT INTO public.compilation_track (compilation_id,track_id)
	VALUES (5,9);
INSERT INTO public.compilation_track (compilation_id,track_id)
	VALUES (6,1);
INSERT INTO public.compilation_track (compilation_id,track_id)
	VALUES (6,2);
INSERT INTO public.compilation_track (compilation_id,track_id)
	VALUES (6,3);
INSERT INTO public.compilation_track (compilation_id,track_id)
	VALUES (6,7);
INSERT INTO public.compilation_track (compilation_id,track_id)
	VALUES (6,8);
INSERT INTO public.compilation_track (compilation_id,track_id)
	VALUES (7,6);
INSERT INTO public.compilation_track (compilation_id,track_id)
	VALUES (7,7);
INSERT INTO public.compilation_track (compilation_id,track_id)
	VALUES (7,8);
INSERT INTO public.compilation_track (compilation_id,track_id)
	VALUES (7,9);
INSERT INTO public.compilation_track (compilation_id,track_id)
	VALUES (7,10);
INSERT INTO public.compilation_track (compilation_id,track_id)
	VALUES (8,17);
INSERT INTO public.compilation_track (compilation_id,track_id)
	VALUES (8,16);
INSERT INTO public.compilation_track (compilation_id,track_id)
	VALUES (8,15);
INSERT INTO public.compilation_track (compilation_id,track_id)
	VALUES (8,14);
INSERT INTO public.compilation_track (compilation_id,track_id)
	VALUES (8,13);
	