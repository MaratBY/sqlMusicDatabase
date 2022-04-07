selection_one = """
-- Selection of albums year and albums name where release date 2018
SELECT date_part('year', release_date) release_date, album_name
FROM albums
WHERE date_part('year', release_date) = '2018';
"""

selection_two = """
-- Selection of the song name and the song duration with maximum value of duration
SELECT song_title, duration_sec
FROM songs
WHERE duration_sec = (SELECT MAX(duration_sec) FROM songs);
"""

selection_three = """
SELECT song_title
FROM songs
WHERE duration_sec >= (3.5 * 60)
ORDER BY song_title;
"""

selection_four = """
SELECT DISTINCT collection_name
FROM music_collections
WHERE date_part('year', release_date) BETWEEN '2018' AND '2020'
ORDER BY collection_name;
"""

selection_five = """
SELECT fname, lname, nickname
FROM musicians
WHERE (length(nickname) - length(replace(nickname, ' ', '')) + 1) = 1;
"""

selection_six = """
SELECT song_title, duration_sec
FROM songs
WHERE song_title
LIKE '%My%' OR song_title LIKE'%my%'
ORDER BY duration_sec DESC;
"""