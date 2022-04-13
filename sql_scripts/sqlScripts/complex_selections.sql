-- Define the size of each genre group
SELECT genre, COUNT(musician_id) group_size
FROM (SELECT * FROM genres
INNER JOIN musicians_genres mg
ON genres.id = mg.genre_id) t
GROUP BY genre
ORDER BY group_size DESC;

-- Number of tracks for albums released in 2019-2020
SELECT release, t.album_name, COUNT(songs.id) songs
FROM songs
JOIN (SELECT id, DATE_PART('year', release_date) release, album_name
FROM albums
WHERE DATE_PART('year', release_date) BETWEEN '2019' AND '2020') t
ON album_id = t.id
GROUP BY release, t.album_name
ORDER BY songs DESC;

-- Average duration of song per each album
SELECT release, t.album_name album, ROUND(AVG(songs.duration_sec), 2) avg_song_duration_seconds
FROM songs
JOIN (SELECT id, DATE_PART('year', release_date) release, album_name
FROM albums) t
ON album_id = t.id
GROUP BY release, album
ORDER BY avg_song_duration_seconds DESC;

-- All musicians which have no releases in 2020 (4th task)
SELECT DISTINCT nickname FROM musicians
WHERE id NOT IN (SELECT DISTINCT ma.musician_id
FROM musicians_albums ma
JOIN albums a ON ma.album_id = a.id
WHERE DATE_PART('year', a.release_date) = '2020');

-- All collection where exists e.g. Nizkiz
SELECT * FROM (SELECT DISTINCT collection_name, m.nickname
FROM music_collections mc
JOIN collections_info ci on mc.id = ci.collection_id
JOIN songs s on ci.song_id = s.id
JOIN musicians m on s.musician_id = m.id) t
WHERE nickname = 'NaviBand';

-- Name of the albums where musician has more than 1 genre
SELECT album_name FROM musicians_albums
JOIN albums a
ON musicians_albums.album_id = a.id
WHERE musician_id IN (SELECT DISTINCT musician_id from musicians_genres
group by musician_id
HAVING count(genre_id) > 1)
ORDER BY album_name;

-- The name of songs that are not collections part
SELECT id, song_title
FROM songs
WHERE id NOT IN (SELECT DISTINCT song_id FROM collections_info);


-- Musician with shortest track in db
SELECT m.nickname, s.song_title, duration_sec
FROM songs s
JOIN musicians m ON m.id = s.musician_id
WHERE duration_sec IN (SELECT MIN(duration_sec) FROM songs);

-- The name of the albums with min amount of songs
SELECT album_id,album_name, number_of_songs FROM albums a
JOIN (SELECT album_id,
COUNT(album_id) number_of_songs
FROM songs
GROUP BY album_id
ORDER BY number_of_songs DESC) t
ON t.album_id = a.id
ORDER BY number_of_songs ASC;



