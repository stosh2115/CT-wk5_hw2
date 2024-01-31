--QUESTION 1
select last_name
from actor 
where last_name = 'Wahlberg';

--QUESTION 2
select customer_id, amount
from payment
where amount between 3.99 and 5.99;

--QUESTION 3
SELECT film_id, store_id
FROM inventory
order by film_id
limit 8;

--QUESTION 4
select last_name
from customer
where last_name = 'William';

--QUESTION 5 - HELP
select staff_id, sum(customer_id)
from rental 
group by staff_id
order by sum(customer_id) desc;


--QUESTION 6
select count(distinct district)
from address;

--QUESTION 7
select  film_id, COUNT(actor_id) AS actors
from film_actor
group by film_id
order by actors DESC
LIMIT 1;

--QUESTION 8
select store_id, last_name 
from customer
where last_name like '%es';

--Question 9 - HELP 
select amount, count(amount) as payment_amount
from payment 
where customer_id between 380 and 430
group by amount
having amount > 250;

--QUESTION 10
select rating, count(*) as the_most
from film
group by rating 
order by the_most;



