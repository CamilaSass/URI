-- URI Online Judge SQL | 2609
-- https://www.urionlinejudge.com.br/judge/pt/problems/view/2609

SELECT categories.name, SUM(amount) AS sum
FROM products
INNER JOIN categories ON products.id_categories = categories.id
GROUP BY categories.name;
