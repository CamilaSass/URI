-- URI Online Judge SQL | 2616
-- https://www.urionlinejudge.com.br/judge/pt/problems/view/2616

-- em mysql foi preciso alterar as datas inseridas na tabela rentals
-- para o formato 'YYYY-MM-DD'
-- assim '09/10/2016' fica '2016-10-09'

SELECT customers.id, customers.name
FROM customers
where not exists(
	select *
    from locations
    where customers.id = locations.id_customers);
