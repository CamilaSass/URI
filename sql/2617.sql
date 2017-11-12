-- URI Online Judge SQL | 2617
-- https://www.urionlinejudge.com.br/judge/pt/problems/view/2617

-- em mysql foi preciso alterar a criacao do campo price
-- na tabela products
-- de price numeric,
-- para price numeric(18,2),
-- pois os valores estavam sendo truncados
-- isso não interfere no resultado dessa consulta

SELECT products.name, providers.name
FROM products
INNER JOIN providers ON products.id_providers=providers.id
WHERE providers.name='Ajax SA';
