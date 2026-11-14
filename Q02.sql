Insert into payment (customer_id, staff_id, rental_id, amount, payment_date, last_update)
Values (
    (Select customer_id from customer where first_name = 'Rodney' and last_name = 'Moeller'),
     1,
    16050,
    4.99,
    '2023-05-05',
    '2023-05-05'
 );

