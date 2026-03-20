SELECT * FROM coffee.sales;

describe sales;

# string type date to date type value updated
SET SQL_SAFE_UPDATES = 0;
update sales
set sale_date = str_to_date(sale_date, '%d/%m/%Y');

# changed the datatype of the column sale_date
alter table sales
modify sale_date date;

# view created
create view sales1 as
select * from sales;
select * from sales1;

# check for duplicates
select *, count(*) as duplicates
from sales1
group by sale_id, sale_date, product_id, customer_id, total, rating
having duplicates>1;

# check for nulls
select *
from sales1
where sale_id is null or sale_date is null or product_id is null or customer_id is null or total is null or rating is null;