CREATE TABLE IF NOT EXISTS genre (
 id SERIAL PRIMARY KEY NOT NULL,
 title VARCHAR(50) NOT NULL
);

CREATE TABLE IF NOT EXISTS artist (
 id SERIAL PRIMARY KEY NOT NULL,
 name VARCHAR(120) NOT NULL
);

CREATE TABLE IF NOT EXISTS album (
 id SERIAL PRIMARY KEY NOT NULL,
 title VARCHAR(120) NOT NULL,
 reliased INT NOT NULL
);

CREATE TABLE IF NOT EXISTS track (
 id SERIAL PRIMARY KEY NOT NULL,
 title VARCHAR(120) NOT NULL,
 album_id INT REFERENCES album(id),
 duration INT NOT NULL
);

CREATE TABLE IF NOT EXISTS compilation (
 id SERIAL PRIMARY KEY NOT NULL,
 title VARCHAR(120) NOT NULL,
 reliased INT NOT NULL
);

CREATE TABLE IF NOT EXISTS genre_artist (
genre_id INT REFERENCES genre(id),
artist_id INT REFERENCES artist(id),
CONSTRAINT GA PRIMARY KEY (genre_id, artist_id)
);

CREATE TABLE IF NOT EXISTS album_artist (
album_id INT REFERENCES album(id),
artist_id INT REFERENCES artist(id),
CONSTRAINT AA PRIMARY KEY (album_id, artist_id)
);

CREATE TABLE IF NOT EXISTS compilation_track (
compilation_id INT REFERENCES compilation(id),
track_id INT REFERENCES track(id),
CONSTRAINT CT PRIMARY KEY (compilation_id, track_id)
);


