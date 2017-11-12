-- URI Online Judge SQL | 2618
-- https://www.urionlinejudge.com.br/judge/pt/problems/view/2618

-- em mysql foi preciso alterar a criacao do campo price
-- na tabela products
-- de price numeric,
-- para price numeric(18,2),
-- pois os valores estavam sendo truncados
-- isso não interfere no resultado dessa consulta

SELECT products.name, providers.name, categories.name
FROM products
INNER JOIN providers ON products.id_providers=providers.id
INNER JOIN categories ON products.id_categories=categories.id
WHERE providers.name='Sansul SA' AND categories.name='Imported';
