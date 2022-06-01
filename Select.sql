SELECT title,reliased
FROM album
WHERE reliased = 2018;

SELECT title, duration
FROM track
WHERE duration = (SELECT max(duration)FROM track);

SELECT title
FROM track
WHERE duration >= 210;

SELECT title
FROM compilation
WHERE reliased BETWEEN 2018 AND 2020;

SELECT "name"
FROM artist
WHERE "name" NOT LIKE '% %';

SELECT title
FROM track
WHERE lower(title) LIKE '%my%' OR lower(title) LIKE '%мой%';

SELECT g.title, count(a."name")
FROM genre AS g
LEFT JOIN genre_artist AS ga ON g.id = ga.genre_id
LEFT JOIN artist AS a ON ga.artist_id = a.id
GROUP BY g.title
ORDER BY count(a.id) DESC;

SELECT t.title, a.reliased
FROM album AS a
LEFT JOIN track AS t ON t.album_id = a.id
WHERE (a.reliased >= 2019) AND (a.reliased <= 2020);

SELECT a.title, AVG(t.duration)
FROM album AS a
LEFT JOIN track AS t ON t.album_id = a.id
GROUP BY a.title
ORDER BY AVG(t.duration);

SELECT DISTINCT a."name"
FROM artist AS a
LEFT JOIN album_artist AS aa ON a.id = aa.artist_id
LEFT JOIN album AS al ON al.id = aa.album_id
WHERE NOT al.reliased = 2020
ORDER BY a."name";
	
SELECT DISTINCT c.title
FROM compilation AS c
LEFT JOIN compilation_track AS ct ON c.id = ct.compilation_id
LEFT JOIN track AS t ON t.id = ct.track_id
LEFT JOIN album AS al ON al.id = t.album_id
LEFT JOIN album_artist AS aa ON aa.album_id = al.id
LEFT JOIN artist AS a ON a.id = aa.artist_id
WHERE a."name" LIKE '%%Morandi%%'
ORDER BY c.title;

SELECT a.title
FROM album AS a
LEFT JOIN album_artist AS aa ON a.id = aa.album_id
LEFT JOIN artist AS ar ON ar.id = aa.artist_id
LEFT JOIN genre_artist AS ga ON ar.id = ga.artist_id
LEFT JOIN genre AS g ON	g.id = ga.genre_id
GROUP BY a.title
HAVING count(DISTINCT g.title) > 1
ORDER BY a.title;

SELECT t.title
FROM track AS t
LEFT JOIN compilation_track AS ct ON t.id = ct.track_id
WHERE ct.track_id IS NULL;

SELECT ar."name", t.duration
FROM track AS t
LEFT JOIN album AS a ON a.id = t.album_id
LEFT JOIN album_artist AS aa ON	aa.album_id = a.id
LEFT JOIN artist AS ar ON ar.id = aa.artist_id
GROUP BY ar."name" ,t.duration
HAVING t.duration = (SELECT min(duration) FROM track)
ORDER BY ar.name;

SELECT DISTINCT a.title
FROM album AS a
LEFT JOIN track AS t ON t.album_id = a.id
WHERE t.album_id IN (SELECT album_id FROM track GROUP BY album_id HAVING count(id) = (SELECT count(id) FROM track GROUP BY album_id ORDER BY count LIMIT 1))
ORDER BY a.title;
