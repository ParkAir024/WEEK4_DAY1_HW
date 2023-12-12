--Week 5 - Monday Questions

--1. How many actors are there with the last name ‘Wahlberg’?

SELECT * from actor

select *
from actor
where last_name like 'Wahlberg'

--There are 2 Wahlberg's

--2. How many payments were made between $3.99 and $5.99?

select * from payment

select count(payment)
from payment
where amount between 3.99 and 5.99

--There are 0 payements


--3. What film does the store have the most of? (search in inventory)

select * from inventory

select film_id, COUNT(*) AS unique_pos_value
from inventory
GROUP BY film_id
ORDER BY unique_pos_value DESC
limit 72

select title, film_id
from film
where film_id = '193'

--There are 72 films tied for the most that the store has, one of them is Crossroads Casualties



--4. How many customers have the last name ‘William’?

select * from customer

select *
from customer
where last_name = 'William'

--There are 0 customers who's last name is William


select *
from customer
WHERE last_name like 'William%'

--There are 2 customers that have similar last names to William,
-- one is Williams and the other is Williamson


--5. What store employee (get the id) sold the most rentals?

select staff_id
from rental

select staff_id, COUNT(*) AS unique_pos_value
from rental
GROUP BY staff_id
ORDER BY unique_pos_value DESC

select staff_id, first_name, last_name
from staff
WHERE staff_id = '1'

-- The employee with the most rentals is Mike Hillyer with 8040


--6. How many different district names are there?

select count(distinct district)
from address
--There are 378 different district names 


--7. What film has the most actors in it? (use film_actor table and get film_id)

select *
from film_actor

select film_id, COUNT(*) AS unique_pos_value
from film_actor
GROUP BY film_id
ORDER BY unique_pos_value DESC

select title, film_id
from film
where film_id = '508'

-- The film "Lambs Cincinatti" has the most actors in it with 15


--8. From store_id 1, how many customers have a last name ending with ‘es’? (use customer table)

select *
from customer

select store_id, last_name
from customer
where last_name like '%es' And store_id ='1'
--There are 13 customers from store_id 1 whos last names end with 'es'


--9. How many payment amounts (4.99, 5.99, etc.) had a number of rentals above 250 for customers
--with ids between 380 and 430? (use group by and having > 250)

select amount, count(amount)
from payment
where customer_id BETWEEN 380 and 430
GROUP BY amount
having count(amount) > 250

--There are 3 payment amounts


--10. Within the film table, how many rating categories are there? And what rating has the most
--movies total?

select rating
from film

select rating, COUNT(*) AS unique_pos_value
from film
GROUP BY rating
ORDER BY unique_pos_value DESC
--There are 5 different rating categories, with PG-13 having the most movies at 224

