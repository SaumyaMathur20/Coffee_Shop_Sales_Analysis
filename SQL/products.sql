SELECT * FROM coffee.products;

describe products;

# view created
create view products1 as
select * from products;
select * from products1;

# check for nulls 
select * 
from products1
where product_id is null or product_name is null or price is null;

# check for duplicates
select *, count(*) as duplicates
from products1
group by product_id, product_name, price
having duplicates>1;

