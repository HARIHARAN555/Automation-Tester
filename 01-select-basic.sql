CREATE DATABASE hariHaran_Bakery; 

Use  databaseName; 

show database name;

drop database name;

create table hari (@primarykey id int, name varchar());


CREATE Database sqllesson2;

show database;

create table fruits(id integer);

alter table fruits add firstName VARCHAR(50);

alter table  fruits rename lastname to "lastName"; 

alter database hariharan_Bakery rename to  bakery;

alter table fruits rename to "vegTable";

insert into "vegTable" (id,"firstName" ,"lastName") values (4,'Hari','Haran');

select * from "vegTable";

select (id) from "vegTable" order by id;

select sum(id) from "vegTable" Group by id ;

select "id" from "vegTable" group by id having count (id)> 2;

select distinct "id" from "vegTable" order by  id --limit 19;

select * from "vegTable" where "id" = 1 And "firstName" = 'Hari' limit 10;

truncate table "vegTable" ;
drop table "vegTable";

insert into "vegTable" (id,"firstName","lastName") values (1,Hari, Haran) on conflict (id) do update set name = fyas.name, laset

create table users(@primary key id integer Unique,name varchar(50),phone1 integer);

create table expenses(expenses_id integer,expenses_name varchar(50),expenses_type varchar(50),user_id integer);

insert into users (id,name,phone1) values (3,'Fayas',76171819);

insert into expenses (expenses_id,expenses_name,expenses_type,user_id) values (2,'Petrol','credit',2);

update "expenses" set "user_id" = 1 where "expenses_id" = 1;

select * from users;

select * from expenses;

select users.name,expenses.expenses_type from expenses inner join users on users.id = expenses.user_id;

select * from users left outer join expenses on users.id = expenses.user_id;

select * from users right outer join expenses on users.id = expenses.user_id;

select * from expenses  join users on users.id = expenses.user_id;

select * from expenses where user_id in (select id from users);

alter table users modify @primary key id ;

ALTER TABLE expenses ADD CONSTRAINT expenses_id PRIMARY KEY (expenses_id);



SELECT column_name, data_type, is_nullable, column_default FROM information_schema.columns WHERE table_name = 'users';

SELECT * FROM information_schema.columns WHERE table_name = 'expenses';


