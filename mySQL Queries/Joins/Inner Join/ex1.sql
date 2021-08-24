select order_id,
       c.customer_id,
       first_name,
       last_name
from customers c
join orders o
   on o.customer_id =c.customer_id;

/*--------------------------------------------*/
select c.first_name,
       c.phone,
       o.order_date
from customers c
join orders o
    using (customer_id);  /* using clause becoz customer_id colomn exist in both cus as well as order table*/

/*-----------------------------*/
select * 
from order_items oi
join products p
   on oi.product_id = p.product_id;

/*----------------------------------*/

select  order_id,
       p.product_id,
       oi.quantity,
       p.unit_price,
       p.unit_price* oi.quantity as total
from order_items oi
join products p
   on oi.product_id = p.product_id;

/*--------------Joining across the data base--------------------*/

use sql_inventory;   
select *
from sql_store.order_items oi     
  join products p  /*current data base */
     on oi.product_id= p.product_id;

/*------------------*/

use sql_store;   
select *
from sql_store.order_items oi     
  join products p  /*current data base */
     on oi.product_id= p.product_id;
/*-------------or-------------*/

use sql_store;
select *
from order_items oi
join sql_inventory.products p
     on oi.product_id= p.product_id;

/*-------------------Self join-----------------------*/

 use sql_hr;
select e.first_name,
       m.first_name as manager,
       m.employee_id
from employees e
 left join employees m   /*to get even managers manger use left join */
  on e.reports_to= m.employee_id;
/*use diffrent aliases
/*prefix each col with aliase

/*--------------------joing multiple table-------------------*/
   
select  o.order_id,
        o.order_date,
        c.first_name,
        os.name as statuses
  from customers c
   join orders o
    using customer_id
   join order_statuses os
     on o.status=os.order_status_id;





  









