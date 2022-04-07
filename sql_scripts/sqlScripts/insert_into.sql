-- TAKEN FROM https://github.com/lukes/ISO-3166-Countries-with-Regional-Codes/blob/master/all/all.csv
INSERT INTO public.countries (country_name, country_region) VALUES
    ('Afghanistan', 'Asia'), ('Aland Islands', 'Europe'), ('Albania', 'Europe'), ('Algeria', 'Africa'),
    ('American Samoa', 'Oceania'), ('Andorra', 'Europe'), ('Angola', 'Africa'),
    ('Anguilla', 'Americas'), ('Antarctica', 'Antarctica'), ('Antigua and Barbuda', 'Americas'),
    ('Argentina', 'Americas'), ('Armenia', 'Asia'), ('Aruba', 'Americas'),
    ('Australia', 'Oceania'), ('Austria', 'Europe'), ('Azerbaijan', 'Asia'),
    ('Bahamas', 'Americas'), ('Bahrain', 'Asia'), ('Bangladesh', 'Asia'),
    ('Barbados', 'Americas'), ('Belarus', 'Europe'), ('Belgium', 'Europe'),
    ('Belize', 'Americas'), ('Benin', 'Africa'), ('Bermuda', 'Americas'),
    ('Bhutan', 'Asia'), ('Bolivia', 'Americas'), ('Bonaire', 'Bonaire'),
    ('Bosnia and Herzegovina', 'Europe'), ('Botswana', 'Africa'), ('Bouvet Island', 'Americas'),
    ('Brazil', 'Americas'), ('British Indian Ocean Territory', 'Africa'),
    ('Brunei Darussalam', 'Asia'), ('Bulgaria', 'Europe'), ('Burkina Faso', 'Africa'), ('Burundi', 'Africa'),
    ('Cabo Verde', 'Africa'), ('Cambodia', 'Asia'), ('Cameroon', 'Africa'), ('Canada', 'Americas'),
    ('Cayman Islands', 'Americas'), ('Central African Republic', 'Africa'),
    ('Chad', 'Africa'), ('Chile', 'Americas'), ('China', 'Asia'), ('Christmas Island', 'Oceania'),
    ('Cocos (Keeling) Islands', 'Oceania'), ('Colombia', 'Americas'),
    ('Comoros', 'Africa'), ('Congo', 'Africa'), ('Cook Islands', 'Oceania'),
    ('Costa Rica', 'Americas'), ('Croatia', 'Europe'), ('Cuba', 'Americas'),
    ('Czechia', 'Europe'), ('Denmark', 'Europe'), ('Estonia', 'Europe'),
    ('Finland', 'Europe'), ('France', 'Europe'), ('Georgia', 'Asia'),
    ('Germany', 'Europe'), ('Greece', 'Europe'), ('Greenland', 'Europe'),
    ('Hong Kong', 'Asia'), ('Hungary', 'Asia'), ('Iceland', 'Europe'),
    ('Ireland', 'Europe'), ('Israel', 'Asia'), ('Italy', 'Europe'), ('Japan', 'Asia'),
    ('Kazakhstan', 'Asia'), ('Korea', 'Asia'),
    ('Latvia', 'Europe'), ('Lithuania', 'Europe'), ('Netherlands', 'Europe'),
    ('New Zealand', 'Oceania'), ('Norway', 'Europe'), ('Ukraine', 'Europe'), ('United Kingdom', 'Europe'),
    ('United States of America', 'Americas');


-- Genres
INSERT INTO public.genres (genre) VALUES ('Rock'), ('Pop'), ('Rap'), ('Hip-Hop'), ('R&B'), ('Grange'),
                                         ('Metall'), ('Hard Rock'), ('Classical'), ('New Metall'),
                                         ('Folk'), ('Popular'), ('Country'), ('Blues'), ('Electronic'),
                                         ('Funk'), ('Heavy Metal'), ('Punk Rock'), ('Alternative'),
                                         ('Techno'), ('Soul'), ('House'), ('Dance'), ('Reggae'),
                                         ('Disco'), ('Indie'), ('Progressive'), ('Psychedelic'),
                                         ('Hardcore'), ('Jungle'), ('Latin'), ('Industrial');

-- Musicians Information
INSERT INTO public.musicians (country_id, genre_id, lname, fname, nickname, bday, photo) VALUES
                             (81, 1,  'Cobain',     'Kurt',     'Kurt Cobain',        '04-19-1994', NULL),
                             (81, 1,  'Bennington', 'Chester',  'Linkin Park',        '07-20-1976', NULL),
                             (81, 1,  'Hendrix',    'Jimi',     'Jimi Hendrix',       '09-18-1970', NULL),
                             (81, 1,  'Dylan',      'Bob',      'Bob Dylan',          '05-25-1976', NULL),
                             (81, 1,  'Morrison',   'Jim',      'Jim Morrison',       '12-08-1943', NULL),
                             (81, 1,  'Grohl',      'Dave',     'Foo Fighters',       '01-14-1969', NULL),
                             (80, 1,  'Tyler',      'Styven',   'The Rolling Stones', '03-26-1948', NULL),
                             (81, 1,  'Pop',        'Iggy',     'The Stooges',        '04-21-1947', NULL),
                             (81, 1,  'Way',        'Gerard',   'My Chemical Romance','04-09-1977', NULL),
                             (80, 1,  'Bowie',      'David',    'David Bowie',        '01-08-1947', NULL),
                             (80, 12, 'Lennon',     'John',     'John Lennon',        '10-09-1940', NULL),
                             (80, 1,  'Freddie',    'Mercury',  'The Queen',          '09-05-1946', NULL),
                             (80, 12, 'Welch',      'Florence', 'Florence and the Machine', '09-28-1986', NULL),
                             (41, 2,  'Adams',      'Bryan',    'Bryan Adams',        '11-05-1959', NULL),
                             (41, 2,  'Young',      'Neil',     'Neil Young',         '09-12-1945', NULL),
                             (41, 3,  'Gram',       'Drake',    'Drake',              '10-25-1986', NULL),
                             (41, 2,  'Mendes',     'Shawn',    'Shawn Mendes',       '09-08-1998', NULL),
                             (41, 3,  'Lanez',      'Tory',     'Tory Lanez',         '07-27-1992', NULL),
                             (41, 2,  'Foster',     'David',    'David Foster',       '11-01-1949', NULL),
                             (41, 2,  'Tosfaye',    'Abel',     'the Weeknd',         '02-16-1990', NULL),
                             (62, 9,  'Zimmer',     'Hans',     'Hans Zimmer',        '09-12-1957', NULL),
                             (62, 3,  'Cole',       'Joe',      'J. Cole',            '01-28-1985', NULL),
                             (62, 7,  'Lindemann',  'Till',     'Rammstein',          '01-04-1963', NULL),
                             (21, 19, 'Ilyin',      'Alexander','Nizkiz',             '10-22-1989', NULL),
                             (21, 19, 'Zhuck',      'Kseniya',  'NaviBand',           '02-03-1991', NULL),
                             (21, 1,  'Mikhalok',   'Siarhei',  'Lyapis Trubeckoy',   '01-19-1972',NULL),
                             (21, 3,  'Korzh',      'Max',      'Max Korzh',          '10-23-1988', NULL);


-- Albums Information
INSERT INTO public.albums (musician_id, release_date, album_name) VALUES
                          (1, '01-15-1989', 'Bleach'), (1, '09-24-1991', 'Nevermind'), (1, '09-13-1993', 'In Utero'),
                          (2, '10-24-2000', 'Hybrid Theory'), (2, '03-25-2003', 'Meteora'), (2, '05-15-2007', 'Minutes to Midnight'),
                          (2, '09-14-2010', 'A Thousand Suns'), (2, '06-26-2012', 'Living Things'), (2, '06-17-2014', 'The Hunting Party'),
                          (2, '05-19-2017', 'One More Light'), (11, '11-29-1968', 'Two Virgins'), (11, '10-09-1971', 'Imagine'),
                          (22, '09-27-2011', 'Cole World'), (22, '04-20-2018', 'KOD'), (22, '05-07-2019', 'The Off Season'),
                          (20, '03-20-2020', 'After Hours'), (16, '06-29-2018', 'Scorpion'), (16, '09-03-2021', 'Certified Lover Boy'),
                          (24, '06-06-2019', 'Sinoptik'), (24, '08-10-2019', 'Somnambula'), (25, '09-05-2020', 'Inshymi'),
                          (25, '09-12-2019', 'Adnoj darohaj'), (25, '12-25-2020', 'Vidpuskayu');


-- Songs information
INSERT INTO songs (musician_id, album_id, song_title, duration_sec) VALUES
                  (25, 22, 'A dzie žyvieš ty?', 260), (25, 22, 'Sumne more', 210),
                  (25, 22, 'Inshymi', 271), (25, 22, 'Historyja Majho žyccia', 200),
                  (24, 19, 'Njabezpecna', 241), (24, 19, 'Blizka', 241), (24, 19, 'Prawily', 263),
                  (24, 19, 'Cjaper i dalei', 220),(24, 19, 'Cemra', 265), (16, 17, 'Survival', 206),
                  (16, 17, 'In My Feelings', 205), (16, 17, 'Dont Matter To Me', 253),
                  (16, 17, 'Gods Plan', 360), (16, 18, 'Champagne Poetry', 202),(16, 17, 'Love All', 240),
                  (16, 17, 'No Friends in The Industry', 245), (16, 17, 'Race My Mind', 301),
                  (16, 17, 'The Remorse', 220), (16, 17, 'IMY2', 210), (16, 17, 'You Only Live Twice', 220);

-- Music Collections
INSERT INTO music_collections (collection_name, release_date, song_id) VALUES
                  ('My Favourite Music Collection', '05-05-2018', 1), ('My Favourite Music Collection', '05-05-2018', 2),
                  ('Happy Music', '01-01-2020', 4), ('Happy Music', '01-01-2020', 1), ('Happy Music', '01-01-2020', 7),
                  ('Mova Na Nova', '09-20-20', 1), ('Mova Na Nova', '09-20-20', 3), ('Mova Na Nova', '09-20-20', 4),
                  ('Drake Songs', '06-22-2019', 10), ('Drake Songs', '06-22-2019', 11), ('Drake Songs', '06-22-2019', 12),
                  ('Mix', '01-19-2018', 1), ('Mix', '01-19-2018', 2), ('Mix', '01-19-2018', 3), ('Mix', '01-19-2018', 4),
                  ('Rap', '02-14-2019', 11), ('Rap', '02-14-2019', 12), ('Rap', '02-14-2019', 13), ('Rap', '02-14-2019', 14),
                  ('Dze ja', '09-22-15', 1), ('Dze ja', '09-22-15', 4), ('Dze ja', '09-22-15', 5), ('Dze ja', '09-22-15', 2),
                  ('Last', '09-23-20', 10), ('Last', '09-23-17', 20), ('Last', '09-23-17', 13), ('Last', '09-23-17', 19);
