-- URI Online Judge SQL | 2620
-- https://www.urionlinejudge.com.br/judge/pt/problems/view/2620

-- em mysql foi preciso alterar as datas inseridas na tabela rentals
-- para o formato 'YYYY-MM-DD'
-- assim '09/10/2016' fica '2016-10-09'

--resposta em mysql:
-- SELECT customers.name, orders.id
-- FROM orders
-- INNER JOIN customers ON orders.id_customers=customers.id
-- WHERE YEAR(orders_date)=2016
-- AND (MONTH(orders_date)<=6);

-- resposta em postgresql:
SELECT customers.name, orders.id
FROM orders
INNER JOIN customers ON orders.id_customers=customers.id
WHERE date_part('year', orders_date)=2016
AND date_part('month', orders_date)<=6;
