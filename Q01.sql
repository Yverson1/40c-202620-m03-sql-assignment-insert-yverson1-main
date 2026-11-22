
Insert into rental (rental_date, inventory_id, customer_id, staff_id, last_update)
Select 
     '2023-05-05',
     i.inventory_id,
      (Select customer_id from customer where first_name = 'Rodney' and last_name = 'Moeller'),
     1,
     '2023-05-05'
from inventory i
join film f on i.film_id = f.film_id
where f.title = 'Panic Club'
  and i.store_id = 1
  and not exists (
      select 1 from rental r
      where r.inventory_id = i.inventory_id and r.return_date is null
  )
order by i.inventory_id
limit 1;