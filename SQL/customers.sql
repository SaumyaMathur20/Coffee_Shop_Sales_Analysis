SELECT * FROM coffee.customers;

describe customers;

# view created
create view customers1 as
select * from customers;
select * from customers1;

# check for nulls
select * 
from customers1 
where customer_id is null or customer_name is null or city_id is null;

# check for duplicates
select *, count(*) as duplicates 
from customers1
group by customer_id, customer_name, city_id 
having duplicates>1;