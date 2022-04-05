create_tables = """
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
    country_id INTEGER NOT NULL REFERENCES countries(id) ,
    genre_id INTEGER NOT NULL REFERENCES genres(id) ,
    lname VARCHAR(80) NOT NULL ,
    fname VARCHAR(80) NOT NULL ,
    nickname VARCHAR(50) NULL ,
    bday DATE NOT NULL ,
    photo BYTEA NULL
);

-- Table for information about albums
CREATE TABLE IF NOT EXISTS albums(
    id SERIAL NOT NULL PRIMARY KEY ,
    musician_id INTEGER REFERENCES musicians(id) ,
    release_date DATE NOT NULL ,
    album_name VARCHAR(50) NOT NULL
);

-- Table for information about songs
CREATE TABLE IF NOT EXISTS songs(
    id SERIAL NOT NULL UNIQUE,
    musician_id INTEGER REFERENCES musicians(id),
    album_id INTEGER REFERENCES albums(id),
    song_title VARCHAR(50) NOT NULL ,
    duration_sec BIGINT NOT NULL,
    constraint pk PRIMARY KEY (musician_id, album_id)
);

-- Musical Collections
CREATE TABLE IF NOT EXISTS music_collections(
    id SERIAL NOT NULL PRIMARY KEY ,
    collection_name VARCHAR(50) NOT NULL ,
    release_date DATE NOT NULL ,
    song_id INTEGER REFERENCES songs(id)
);

"""