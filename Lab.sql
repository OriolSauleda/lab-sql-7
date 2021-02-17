-- 1
SELECT last_name, COUNT(last_name) as reps
FROM sakila.actor
GROUP BY last_name
HAVING reps = 1;

-- 2
SELECT last_name, COUNT(last_name) as reps
FROM sakila.actor
GROUP BY last_name
HAVING reps > 1;

-- 3
SELECT staff_id, count(rental_id)
FROM sakila.rental
GROUP BY staff_id;

-- 4
select count(film_id), release_year from sakila.film
group by release_year;

-- 5
select count(film_id), rating from sakila.film
group by rating;

-- 6
select round(avg(length), 2), rating from sakila.film
group by rating;

-- 7
select rating, round(avg(length), 2) as avg_length from sakila.film
group by rating
having avg_length > 120;