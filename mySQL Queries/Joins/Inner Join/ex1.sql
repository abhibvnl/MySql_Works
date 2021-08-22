select c.first_name,
       c.phone,
       o.order_date
from customers c
join orders o
 using (customer_id);