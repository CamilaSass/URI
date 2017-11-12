-- URI Online Judge SQL | 2614
-- https://www.urionlinejudge.com.br/judge/pt/problems/view/2614

-- em mysql foi preciso alterar as datas inseridas na tabela rentals
-- para o formato 'YYYY-MM-DD'
-- assim '09/10/2016' fica '2016-10-09'
-- resposta em mysql:
-- SELECT name, rentals_date
-- FROM rentals
-- INNER JOIN customers ON id_customers=customers.id
-- WHERE YEAR(rentals_date) = 2016 AND MONTH(rentals_date) = 9;

-- resposta em postgresql:
SELECT name, rentals_date
FROM rentals
INNER JOIN customers ON id_customers=customers.id
WHERE date_part('year', rentals_date)=2016
AND date_part('month', rentals_date)=9;
