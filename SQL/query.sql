# database created
create database coffee;
use coffee;

# view created on all csv join
create view coffee_analysis as
select s.sale_id , s.sale_date, s.total, s.rating,
c.customer_id, c.customer_name,
ci.city_id, ci.city_name, ci.population, ci.estimated_rent, ci.city_rank,
p.product_id, p.product_name, p.price
from sales1 as s
inner join customers1 as c
on s.customer_id = c.customer_id
inner join city1 as ci
on ci.city_id = c.city_id
inner join products1 as p
on p.product_id = s.product_id;
select * from coffee_analysis;