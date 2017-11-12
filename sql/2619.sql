-- URI Online Judge SQL | 2619
-- https://www.urionlinejudge.com.br/judge/pt/problems/view/2619

-- em mysql foi preciso alterar a criacao do campo price
-- na tabela products
-- de price numeric,
-- para price numeric(18,2),
-- pois os valores estavam sendo truncados
-- isso INTERFERE no resultado dessa consulta

SELECT products.name, providers.name, products.price
FROM products
INNER JOIN providers ON products.id_providers=providers.id
INNER JOIN categories ON products.id_categories=categories.id
WHERE products.price>1000 AND categories.name='Super Luxury';
