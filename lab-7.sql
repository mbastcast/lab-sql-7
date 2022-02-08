#In the table actor, which are the actors whose last names are not repeated? For example if you would sort the data in the table actor by last_name, you would see that there is Christian Arkoyd, Kirsten Arkoyd, and Debbie Arkoyd. These three actors have the same last name. So we do not want to include this last name in our output. Last name "Astaire" is present only one time with actor "Angelina Astaire", hence we would want this in our output list.
select * from actor;
select last_name, count(last_name)as count_names
from actor
group by last_name
having count_names=1;
#Which last names appear more than once? We would use the same logic as in the previous question but this time we want to include the last names of the actors where the last name was present more than once
select * from actor;
select last_name, count(last_name)as count_names
from actor
group by last_name
having count_names>1;
#Using the rental table, find out how many rentals were processed by each employee.
select * from rental;
select staff_id, count(rental_id)
from rental
group by staff_id;
#Using the film table, find out how many films were released each year.
select * from film;
select release_year, count(film_id)
from film
group by release_year;
#Using the film table, find out for each rating how many films were there.
select rating, count(film_id)
from film
group by rating;
#What is the mean length of the film for each rating type. Round off the average lengths to two decimal places
select * from film;
SELECT rating, round(AVG(length),2) as avg_len
FROM film
GROUP BY rating
order by avg_len desc;
#Which kind of movies (rating) have a mean duration of more than two hours?
select * from film;
SELECT rating, round(AVG(length),2) as avg_len
FROM film
GROUP BY rating
having avg_len > 120;