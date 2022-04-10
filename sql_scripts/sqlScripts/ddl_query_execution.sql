-- Table that stores the countries data (used in musicians table)
CREATE TABLE IF NOT EXISTS countries(
    id SERIAL NOT NULL PRIMARY KEY ,
    country_name VARCHAR(50) NOT NULL ,
    country_region VARCHAR(50) NOT NULL
);

-- Table for genres information (used in musicians table)
CREATE TABLE IF NOT EXISTS genres(
    id SERIAL NOT NULL PRIMARY KEY ,
    genre VARCHAR(50) NOT NULL
);

-- "Main" table for storing information about musicians
CREATE TABLE IF NOT EXISTS musicians(
    id SERIAL NOT NULL PRIMARY KEY ,
    country_id INTEGER NOT NULL REFERENCES countries(id),
    lname VARCHAR(80) NOT NULL ,
    fname VARCHAR(80) NOT NULL ,
    nickname VARCHAR(50) NULL ,
    bday DATE NOT NULL ,
    photo BYTEA NULL
);

--Intermediate table for musicians-genres (many-to-many)
CREATE TABLE IF NOT EXISTS musicians_genres(
    musician_id INT REFERENCES musicians(id),
    genre_id INT REFERENCES genres(id),
    constraint pk PRIMARY KEY (musician_id, genre_id)
);

-- Table for information about albums
CREATE TABLE IF NOT EXISTS albums(
    id SERIAL NOT NULL PRIMARY KEY ,
    release_date DATE NOT NULL ,
    album_name VARCHAR(50) NOT NULL
);

-- Table for musician albums (many-to-many)
CREATE TABLE IF NOT EXISTS musicians_albums(
    id SERIAL PRIMARY KEY NOT NULL ,
    musician_id INT REFERENCES musicians(id),
    album_id INT REFERENCES albums(id)
);

-- Table for information about songs
CREATE TABLE IF NOT EXISTS songs(
    id SERIAL PRIMARY KEY NOT NULL UNIQUE,
    musician_id INTEGER REFERENCES musicians(id),
    album_id INTEGER REFERENCES albums(id),
    song_title VARCHAR(50) NOT NULL ,
    duration_sec BIGINT NOT NULL);

-- Musical Collections
CREATE TABLE IF NOT EXISTS music_collections(
    id SERIAL NOT NULL PRIMARY KEY ,
    collection_name VARCHAR(50) NOT NULL ,
    release_date DATE NOT NULL);

-- Tracks Information (many-to-many)
CREATE TABLE IF NOT EXISTS collections_info(
    id SERIAL NOT NULL PRIMARY KEY,
    song_id INT REFERENCES songs(id),
    collection_id INT REFERENCES music_collections(id)
);