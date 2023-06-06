-- Hello world!

SELECT * 
FROM actor;

SELECT * 
FROM actor

SELECT * 
FROM actor;

-- A note on single vs double quotes- use singles!!!
--   single quotes represent strings, doubles represent DB identifiers


SELECT * 
FROM actor;

SELECT first_name, last_name
FROM actor;


SELECT first_name, last_name 
FROM actor 
WHERE first_name = 'Nick';

SELECT first_name, last_name
FROM actor
WHERE first_name LIKE 'Nick';

-- Wildcards!  use these with LIKE:  _     and      %
-- % is a true wildcard, that means any number of characters!
--      _ is a one character wildcard

SELECT first_name, last_name
FROM actor
WHERE first_name LIKE 'N___';  
-- 3 underscores

SELECT first_name, last_name
FROM actor
WHERE first_name LIKE 'N__';  
-- 2 underscores

SELECT first_name, last_name
FROM actor
WHERE first_name LIKE 'N__%';  

SELECT first_name, last_name
FROM actor
WHERE first_name LIKE 'N%';  


SELECT first_name, last_name
FROM actor
WHERE first_name LIKE 'K%';  


SELECT first_name, last_name
FROM actor
WHERE first_name LIKE 'K__%th';  


-- Comparison operators:
--    =  and LIKE (see above)
-- Greater >  and less than <
-- Greater/equal to >=  and less than/equal to =<
-- Not equal <>

SELECT *
FROM payment;

SELECT customer_id, amount
FROM payment
WHERE amount < 0;


SELECT customer_id, amount
FROM payment
WHERE amount > 0;


SELECT customer_id, amount
FROM payment
WHERE amount >= -415;

SELECT customer_id, amount
FROM payment
WHERE amount <= -415;

-- We also have the word BETWEEN
SELECT customer_id, amount
FROM payment
WHERE amount >= -415;


SELECT customer_id, amount
FROM payment
WHERE amount BETWEEN -425 AND -420;

-- BETWEEN IS inclusive
SELECT customer_id, amount
FROM payment
WHERE amount BETWEEN -424.01 AND -420;

SELECT customer_id, amount
FROM payment
WHERE amount < -420 or amount > 70;


SELECT customer_id, amount
FROM payment
WHERE amount < -420
-- ORDER BY amount ASC;  
ORDER BY amount DESC; 

-- default is ASC for ORDER BY

-- select
-- from 
-- where
-- order by

SELECT * FROM payment WHERE amount > 70;

SELECT * 
FROM customer;

SELECT first_name, last_name
FROM customer
WHERE customer_id = 341;

-- SQL aggregators:  SUM(), AVG(), MIN(), MAX(), COUNT()


SELECT * FROM payment;


SELECT SUM(amount)
from payment
WHERE amount < -420;


SELECT AVG(amount)
from payment
WHERE amount < -420;

-- let's think about the average of amounts under 0

SELECT AVG(amount)
from payment
WHERE amount < 0;


SELECT COUNT(amount)
from payment;


SELECT COUNT(amount)
from payment
WHERE amount > 0;

-- What about DISTINCT amounts?
SELECT COUNT(DISTINCT amount)
from payment
WHERE amount > 0;

SELECT MIN(amount) as Biggest_payout
FROM payment
WHERE amount < 0;

-- GROUP BY:
-- have to use use this when mixing aggregates and reg coulumns to sort it out



SELECT amount, COUNT(amount), SUM(amount)
from payment
GROUP BY amount
ORDER BY amount;


SELECT amount
FROM payment
WHERE amount = -426.01;

SELECT amount, COUNT(amount)
FROM payment
WHERE amount = -426.01
GROUP BY amount
ORDER BY amount;


SELECT customer_id, amount
FROM payment
GROUP BY amount, customer_id
ORDER BY customer_id;

SELECT customer_id, sum(amount)
from payment
GROUP BY customer_id
ORDER BY sum(amount) DESC;


SELECT * from customer


SELECT COUNT(customer_id), email
from customer
where email LIKE 'jas%'
GROUP BY email
HAVING COUNT(customer_id) > 0

-- Some general rules:

SELECT customer_id, SUM(amount) -- what (columns) we want to see
FROM payment                    -- from where?
-- these two are the basic building blocks/foundation

WHERE customer_id BETWEEN 0 and 150 -- how?
GROUP BY customer_id   -- using aggregates
HAVING SUM(amount) > 100   -- just like where but for aggregates. . .  optional?
            -- DOES NOT come before group gy
ORDER BY customer_id 
LIMIT 2 -- always towards end and limits results
OFFSET 3  -- not super helpful or very common

select * from payment LIMIT 5 OFFSET 2


-- Basic structure/order:
-- select <columns> <aggregates>
-- from <table>
-- where <conditional>
-- group by <columns>
-- having <conditional>
-- order by <column>











