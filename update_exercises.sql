USE codeup_test_db;

SELECT name
FROM albums;

SELECT name
FROM albums
WHERE release_date <= 1980;

SELECT name
FROM albums
WHERE artist = 'Michael Jackson';

UPDATE albums
SET sales = sales * 10;

SELECT sales FROM albums;

UPDATE albums
SET release_date = 1800
WHERE release_date < 1980;

SELECT release_date FROM albums;

UPDATE albums
SET artist = 'Peter Jackson'
WHERE artist = 'Michael Jackson';

SELECT artist FROM albums;