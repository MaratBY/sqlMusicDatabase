-- Selection of albums year and albums name where release date 2018
SELECT date_part('year', release_date) release_date, album_name
FROM albums
WHERE date_part('year', release_date) = '2018';

-- Selection of the song name and the song duration with maximum value of duration
SELECT song_title, duration_sec
FROM songs
WHERE duration_sec = (SELECT MAX(duration_sec) FROM songs);

-- Select name of the song where duration is greater or equal 3.5 minutes
SELECT song_title
FROM songs
WHERE duration_sec >= (3.5 * 60)
ORDER BY song_title;

-- SELECT name of the music collections where release date is between 2018 and 2020
SELECT DISTINCT collection_name
FROM music_collections
WHERE date_part('year', release_date) BETWEEN '2018' AND '2020'
ORDER BY collection_name;

-- SELECT musicians whose nickname is only one-word name
SELECT fname, lname, nickname
FROM musicians
WHERE (length(nickname) - length(replace(nickname, ' ', '')) + 1) = 1;

-- SELECT all songs whose title contains word 'My'
SELECT song_title, duration_sec
FROM songs
WHERE song_title
LIKE '%My%' OR song_title LIKE'%my%'
ORDER BY duration_sec DESC;
