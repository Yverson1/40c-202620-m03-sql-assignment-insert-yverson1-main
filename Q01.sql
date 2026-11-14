
Insert into rental (rental_date, inventory_id, customer_id, staff_id, last_update)
Select 
     '2023-05-05',
     MIN(i.inventory_id),
      (Select customer_id from customer where first_name = 'Rodney' and last_name = 'Moeller'),
     1,
     '2023-05-05'
from inventory i
join film f on i.film_id = f.film_id
left join rental r on i.inventory_id = r.inventory_id and r.return_date is null
where f.title = 'Panic Club'
  and i.store_id = 1
  and r.rental_id is null;