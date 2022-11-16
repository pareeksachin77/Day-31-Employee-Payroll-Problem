
--uc1 create database
create database Payroll;

select * from sys.databases

select name from sys.databases  
select db_name();

use Payroll


--uc2 
create table employee_payroll
(
id int identity(1,1) primary key,
name varchar(100) not null,
salary money not null,
start_date date not null,
)

alter table employee_payroll add primary key (id)

select * from INFORMATION_SCHEMA.columns where table_name='employee_payroll'

--uc3
insert into employee_payroll values('sachin',35000, '2020-03-09')
insert into employee_payroll (salary,start_date,name) values (21000, '2021-05-12','ram')
insert into employee_payroll values 
('rahul',17000, '2021-12-23'),
('surya',30000, '2022-12-25'),

--uc4
 select * from employee_payroll;

 --select name from employee_payroll

 --select name as 'emplyoee_name' from employee_payroll

 --retrive salary of anyone emplee


 --uc5
 select salary,name from employee_payroll where name='surya'

 select getdate()

 select * from employee_payroll where start_date between '2021-05-12' and '2022-11-12'
  select * from employee_payroll where start_date between '2021-05-12' and getdate()

  -- add gender column in table

  alter table employee_payroll add Gender char(1)

  --uc6

  update employee_payroll set Gender='M' where name='surya'

 update employee_payroll set Gender='M' where id in(1,2,3);

 insert into employee_payroll values ('radha',80000, '2019-10-6', 'F')

 --uc7
 -- find sum,avg, min, max, and number(count) of male and female emploee
 select gender, sum(salary) from employee_payroll group by gender

alter table employee_payroll add 
employee_phone varchar(15),
address varchar(300) not null
department varchar(50) not null default 'CS'


