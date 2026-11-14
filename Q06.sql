Update rental 
set return_date = '2023-05-08'
 where return_date is null;



UPDATE rental
SET return_date = '2023-05-08'
WHERE return_date IS NULL;