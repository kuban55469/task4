- Вывести всех клиентов из страны Canada
SELECT * FROM customer WHERE country = 'Canada';

- Вывести все страны клиентов
SELECT DISTINCT country FROM customer;

- Вывести количество всех заказов
SELECT COUNT(*) FROM orders;

- Вывести максимальную стоимость заказа
SELECT MAX(total_amount) FROM orders;

- Найти сумму всех заказов
SELECT SUM(total_amount) FROM orders;

- Найти сумму всех заказов за 2014 год
SELECT SUM(total_amount) FROM orders WHERE order_date BETWEEN '2014-01-01' AND '2014-12-31';

- Найти среднюю стоимость всех заказов
SELECT AVG(total_amount) FROM orders;

- Найти среднюю стоимость всех заказов по каждому клиенту


- Найти всех клиентов, которые живут в Бразилии или Испании
select * from customer where country in ('Spain', 'Brazil');

- Найти все заказы между 2013ым и 2014ым годами, которые стоили меньше 100.00$
SELECT * FROM orders WHERE order_date BETWEEN '2013-01-01' AND '2013-12-31' AND total_amount > 100.00;

- Найти всех клиентов, которые в одной из стран: Испания, Италия, Германия, Франция. Отсортируйте по странам
SELECT * FROM customer WHERE country IN ('Spain', 'Italy', 'Germany', 'France') ORDER BY country;
SELECT * FROM customer WHERE country IN ('Spain', 'Italy', 'Germany', 'France') ORDER BY country DESC;

- Найти все страны клиентов, страны которых содержаться в таблице поставщиков
SELECT DISTINCT customer.country FROM customer JOIN supplier o on customer.id = o.id;

- Найти всех клиентов, имена которых начинаются на --‘Jo’
SELECT * FROM customer WHERE first_name ilike 'Jo%';

- Найти всех клиентов, имена которых заканчиваются на ‘a’ и имеют длину ровно 4 символа
SELECT * FROM customer WHERE first_name ilike '%a' AND length(first_name) = 4;

- Найти количество клиентов по странам
select count(*),country from customer GROUP BY country;

- Найти количество клиентов по странам. Вывести в порядке убывания
select count(*),country from customer GROUP BY country ORDER BY country DESC;

- Найти общую сумму стоимости заказов и количество заказов по каждому клиенту (customer_id).
    Отсортировать по сумме
SELECT SUM(quantity * unit_price), count(*) FROM customer JOIN order_item c on customer.id = c.id;

- Найти общую сумму стоимости заказов и количество заказов по каждому клиенту (customer_id),
    у которых общее количество заказов больше 20ти
select customer_id, sum(total_amount),count(customer_id) from orders group by customer_id
having count(customer_id) >20;

- Найти количество городов в каждой из стран клиентов
SELECT COUNT(city),country FROM customer group by country;