
--Row Number in SQL
create table ##employees(
name nvarchar(100) null,
gender nvarchar(100) null,
salary int)

insert into ##employees(name , gender ,salary)
values('Pam' , 'Female' , 5500),
	  ('sara','Female',4000),
	  ('mary','Female',5000),
	  ('Tom','Male',5500),
	  ('Ron','Male',5000),
	  ('Ben','Male',6500)


select name, gender ,salary , ROW_NUMBER() over(partition by gender order by gender) from ##employees
