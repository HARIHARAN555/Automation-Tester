create database students_managements;

create table students (id integer primary key unique not null, name varchar(50),dob date,grade integer);

create table staff  (id integer primary key unique not null, name varchar(50),grade integer);

create table attendance (id integer primary key unique not null,status boolean, students_id integer, foreign key (students_id) references students (id) on delete restrict );

alter table staff add subject varchar(50);

alter table attendance add at_date date;

insert into staff (id,name,grade,subject) values (9,'Veera',7,'English'),(10,'guru',8,'Tamil'),(11,'Fayas',12,'Coding');

select * from staff; 

alter table attendance alter column at_date set not null;

insert into students (id,name,grade) values (1,'Hariharan',6),(2,'Fayas',12),(3,'charan',4),(4,'bala',2),(5,'anbu',5),(6,'sabari',6),(7,'Kishore',8),(8,'karthi',8),(9,'abin',9),(10,'kaviya',10),(11,'deepan',10),(12,'dinesh',11),(13,'mhogan',12),(14,'prathap',12),(15,'pranv',11),(16,'pradeep',2),(17,'prakash',4),(18,'vijay',5),(19,'sethu',6),(20,'surya',7);

update students set dob = ('2000-01-01'),('2000:01:03'),('2000:01:04') where id in (2,3,4);

update students set dob = '2001-04-17' where id = 4;
update students set dob = case id when 3 then '2000-01-03'::date when 6 then '2000-01-04'::date when 2 then '2000-01-05'::date end where id in (6,2,3);

update students set dob = case id when 6 then '2000-01-04'::date when 7 then '2001-01-03'::date when 14 then '2002-02-04'::date when 8 then '2003-07-02'::date when 9 then '2001-04-03'::date when 10 then '2004-05-12'::date when 11 then '2006-04-12'::date end where id in (7,8,9,10,11);

select *from students;
select * from attendance;
select * from fees;


insert into attendance (id,status,students_id,at_date) values (1,true,1,'2000-01-21');

delete from students where "id" = 1;

delete from attendance where "students_id" = 1;

select "name","at_date","status" from "students" join attendance on students.id = attendance.id;

create table fees (id integer primary key not null, grade integer not null, school_fees integer not null);

insert into fees (id,grade,school_fees) values (1,1,20000),(2,2,22000),(3,3,30000),(4,4,40000);

select b."grade", a."name","school_fees","status","at_date" from "students" a left join fees b on a.grade = b.grade , "students" at join attendance t on at.id = t.students_id;


