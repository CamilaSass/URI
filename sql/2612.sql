-- URI Online Judge SQL | 2612
-- https://www.urionlinejudge.com.br/judge/pt/problems/view/2612

-- em mysql pode ser AND (actors.name='Marcelo Silva' OR 'Miguel Silva');

SELECT DISTINCT movies.id, movies.name
FROM (((movies
INNER JOIN genres ON movies.id_genres=genres.id)
INNER JOIN movies_actors ON movies.id=movies_actors.id_movies)
INNER JOIN actors ON movies_actors.id_actors=actors.id)
WHERE description='Action'
AND (actors.name='Marcelo Silva' OR actors.name='Miguel Silva');
