 -- use mavenmovies_db:
use mavenmovies;

/* 1.Write a sql query to count the number of characters except the spaces fro each actor. 
Return first 10 actors name length along with their name*/
select concat(first_name,space(1),last_name) as Actor_name,length(replace(concat(' ',first_name," ", last_name)," ",""))
as length_of_name from actor limit 10;

/* 2.List all oscar awardees(Actors who received oscar award) with their fullnames and length
of their names.*/
select concat(first_name," ",last_name) as fullname,length(concat(first_name,last_name))
as length_of_fullname,awards from actor_award where awards LIKE '%OS%';

-- 3.Find the actors who have acted in the film 'Frost Head'.
select concat(first_name," ",last_name) as Actors,title from actor as a inner join film_actor as fa on a.actor_id=fa.actor_id 
inner join film as f on fa.film_id=f.film_id where title='Frost Head';

SELECT * FROM ACTOR;
-- TO get name with 2nd letter-a & 3rd-r with award.
SELECT * FROM ACTOR_AWARD WHERE first_name like '_AR%';

-- 4.Pull all the films acted by the actor 'will wilson'.
select Concat(first_name," ",last_name) as Actorname,title as films_acted_by_willwilson  from actor as a inner join film_actor as fa on a.actor_id=fa.actor_id 
inner join film as f on fa.film_id=f.film_id  where concat(first_name," ",last_name)='will wilson';

-- 5.Pull all the films which were rented and return in the month of may.  
select title as films,rental_date,return_date from film as f inner join inventory as i on f.film_id=i.film_id 
inner join rental as r on i.inventory_id=r.inventory_id where rental_date like '%-05-%' and return_date like '%-05-%';

select * from payment;
select * from rental;
select sum(amount) from payment where payment_date between '2005-05-15' and '2005-05-31';
-- 

-- 6.Pull all the films with 'Comedy' category. 
select title as films,name as category_name from film_text as ft inner join film_category as fc on ft.film_id=fc.film_id 
inner join category as c on fc.category_id=c.category_id where name='comedy';
SELECT * from actor_award where awards like "o%r";
 