--select all columns from the actor table
-- select grabs the columns we want to display
select * --selects all the columns from out table 
from actor --from is going to determine the table we are querying

--selecting specific columns from the actor table
--first_name and lat_name
select first_name, last_name
from actor;

-- using the WHERE clause
--condition to only pull back daya that matches the WHERE
select first_name, last_name
from actor 
where first_name = 'Nick';

-- using the WHERE clause to find the actor with an id of 2
select first_name, last_name, actor_id 
from actor 
where actor_id = 2;

--using WHERE and LIke to find a match
select first_name, last_name
from actor 
where first_name like 'Joe';

-- using the LIKE with the wildcard %
-- using the LIKE for a partial match
select first_name, last_name
from actor 
where first_name like 'J%';

-- using the partial match with the wildcard
-- to search for some kind of Jane
select first_name, last_name
from actor 
where first_name like 'J%ne';

--using the like and where clause
-- to find a three letter name that starts with K
select first_name, last_name
from actor 
where first_name like 'K__';

select first_name, last_name
from actor 
where first_name like 'K_____n';


-- comparison operators
-- Greater than > Greater than or equal to >=
-- Less than < Less than or equal to <=
-- equal = Just one equals
-- not equals <>

--query to check out whats in our payment table
select *
from payment;


-- query to show customers who paid over 3.00
select customer_id, amount
from payment 
where amount > 3.00;

-- selecting unique rows where the customers spent over 3.00
-- using the DISTINCT keyword
select distinct customer_id -- selects unique instances of customers_id from the payment table
from payment 
where amount > 3.00; -- the condition to select those customers
order by customer_id; -- ordering customer_id in asc by default

-- query for customers who paid under 7.99 
select customer_id, rental_id, amount
from payment 
where amount < 7.99
order by amount desc; --descending order

--query for payments that were greater than or equal to 5.99
select customer_id, rental_id, amount
from payment 
where amount >= 5.99
order by amount;

-- query for amounts paid less than or equal to 2.99
select customer_id, rental_id, amount
from payment 
where amount <= 2.99
order by amount

--limiting the number of record we bring back
-- the top 5 most expensive rentals
select customer_id, amount, rental_id --select columns to display
from payment -- table we're selecting from
order by amount desc -- order the data in desecending order so the largest amounts go to the top
limit 5; --limits the display to 5 records

--offsetting our limit
--between the top 10 and 20 rows
select customer_id, amount
from payment 
order by amount desc 
limit 10 offset 10;


-- ORDER BY
--BETWEEN
select *
from payment 
order by amount asc; --defaults to ascending order

--using BETWEEN to show customers who paid between 2 certain amounts
--BETWEEN goes with where
--and to join to clauses
select customer_id, amount
from payment 
where amount between 2.99 and 5.99;

-- query to see customers who paid 0.00 for rentals
select customer_id, amount
from payment 
where amount = 0.00;

-- query for customers who paid for the rental
select customer_id, amount
from payment 
where amount <> 0.00
order by amount; -- defaults to ascending

--SQL Aggregations sum(), AVG, COUNT(),MIN(), MAX()
--query to display sum of amounts paid
select SUM(amount)
from payment;

--sum of amounts paid over 5.99
select sum(amount)
from payment
where amount > 5.99;

-- average amount paid
select avg(amount)
from payment;

--average amount paid over 6.99
select avg(amount)
from payment
where amount > 6.99;

--query to display the number of amounts paid
select count(amount)
from payment;

--show the unique or DISTINCT number of payment amounts
select count(distinct amount)
from payment;

--unique amounts paid over 5.99
select count(distinct amount)
from payment
where amount > 5.99;

-- MIN and MAX
-- the smallest amount paid over 7.99
select min(amount) as min_num_payments
from payment
where amount > 7.99;

-- the largest amount greater than 7.99
select max(amount) as max_bigger799
from payment
where amount > 7.99;


-- query to display the individual number of payment amounts
select amount, count(amount)
from payment
group by amount
order by amount;


-- how much has each customer_id paid
select customer_id, sum(amount)
from payment
group by customer_id
order by sum(amount) desc;

--grab amount by customer_id
select customer_id, amount
from payment
group by customer_id, amount 
order by customer_id;





