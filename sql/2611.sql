-- URI Online Judge SQL | 2611
SELECT movies.id, name
FROM movies
INNER JOIN genres ON movies.id_genres=genres.id
WHERE description='Action';
