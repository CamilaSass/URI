-- URI Online Judge SQL | 2613
-- https://www.urionlinejudge.com.br/judge/pt/problems/view/2613

-- em mysql foi preciso alterar o campo value na criacao da tabela prices para
-- value numeric(18,2)
-- pois os valores estavam sendo arredondados para cima
-- assim 1.50 era armazenado como 2

SELECT movies.id, movies.name
FROM movies
INNER JOIN prices ON movies.id_prices=prices.id
WHERE prices.value<2;
