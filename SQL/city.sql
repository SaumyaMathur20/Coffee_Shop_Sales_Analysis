SELECT * FROM coffee.city;

describe city;

# view created
create view city1 as
select * from city;
select * from city1;

# check for duplicates
select *, count(*) as duplicates
from city1
group by city_id, city_name, population, estimated_rent, city_rank
having duplicates>1;

# check for nulls 
select *
from city1
where city_id is null or city_name is null or population is null or estimated_rent is null or city_rank;