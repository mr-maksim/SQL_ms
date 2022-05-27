SELECT title,reliased FROM album
	WHERE reliased = 2018;
	
SELECT title,duration  FROM track
	WHERE duration = (SELECT max(duration) FROM track);

SELECT title FROM track
	WHERE duration >= 210; 
	
SELECT title FROM compilation
	WHERE reliased BETWEEN 2018 AND 2020;

SELECT "name" FROM artist
	WHERE "name" NOT LIKE '% %';
	
SELECT title FROM track
	WHERE lower(title) LIKE '%my%' OR lower(title) LIKE '%мой%';