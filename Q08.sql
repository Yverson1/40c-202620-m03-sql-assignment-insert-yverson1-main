delete from rental
where rental_id = 16050;

select rental_date
from rental
where return_date is null;
   and staff_id = 1;