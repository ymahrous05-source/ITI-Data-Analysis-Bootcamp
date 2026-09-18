--DDL  CREATE   ALTER   DROP

Create database  DB
use db

CREATE Table Employee
(--colName   Datatype   Constraints
    SSN        int       primary key identity(1,1),
	FName     varchar(50)  not null  ,
	LName     varchar(50)  unique,
	Gender    char(1) ,
	Salary    int      check (Salary>10000),
	DNUM      int   --foreign  key reference Department (dnum)
	,
	Address   varchar(50) default 'cairo',

)

alter table Employee
add overtime int

alter table Employee
alter column overtime bigint


alter table Employee
Drop column overtime

drop table Employee

drop database db

--DML  Insert  Update   Delete
Insert into Employee
values('noura' ,'ahmed','f',15000,20,null)

Insert into Employee(Fname,Lname,gender, salary,dnum )
values('mahmoud' ,'mohamed','m',20000,10)


Insert into Employee(Fname,Lname )
values('mahmoud' ,'islam')

--Update
update employee
set fname = 'aya'
where ssn =5

update employee
set salary +=100
where ssn = 3

delete from employee
where ssn = 5


--DQL    SELECT
SELECT *      --* = ALL COULMNS
FROM EMPLOYEE

use iti
select *
from student

select  st_fname , st_lname
from student

select st_fname + ' '+st_lname
from student

select Ins_Name ,salary
from Instructor
where Salary >= 5000 and salary <=13000

--Between
select Ins_Name ,salary
from Instructor
where Salary between 5000 and 13000

select Ins_Name ,salary
from Instructor
where Salary not between 5000 and 13000


select Ins_Name ,salary
from Instructor
where Salary = 5000 or salary =13000

--in
select Ins_Name ,salary
from Instructor
where Salary in (5000,13000)

select Ins_Name ,salary
from Instructor
where Salary not in (5000,13000)

--order by
select Ins_Name ,salary
from Instructor
order by Salary asc

select Ins_Name ,salary
from Instructor
order by Salary desc


--distincit  order + unique values
select distinct salary
from Instructor


--Like Operator   pattern
--where fname like ''     
--2 reserverd char
--- %   0 or more char
--- _  one char

--like 'a%h' ==>   a 0000 h
--like '%a' ==>     0000 a
--like '%a_' ==>   00000 a 0
--like '[ahm]%' ==>  a or h or m
--like 'ahm%' ==>    ahm  000
--like '[_]%' ==>  _00000
--like '[%]%' ==>  %0000

--like '%[%]' ==>  0000%

select st_fname , St_Age
from student
where St_Fname like 'a%'



select st_fname , St_Age
from student
where St_Fname like '%a'

select st_fname , St_Age
from student
where St_Fname like '[_]%'


--Joins   
--Cross Join
select s.St_Fname ,d.Dept_Name
from student s cross join Department d

--Inner Join
select  s.St_Fname , d.Dept_Name
from student s inner join Department d 
on d.Dept_Id = s.Dept_Id


--outer join
---left outer join
select  s.St_Fname , d.Dept_Name
from student s left outer join Department d 
on d.Dept_Id = s.Dept_Id


---right outer join
select  s.St_Fname , d.Dept_Name
from student s right outer join Department d 
on d.Dept_Id = s.Dept_Id
---full outer join   stud in dept + stude not in depart   + depart dosen't have students

select  s.St_Fname , d.Dept_Name
from student s full outer join Department d 
on d.Dept_Id = s.Dept_Id


--self join
select super.St_Fname as supername ,std.St_Fname  as stdname
from student std join student super
on super.St_Id = std.St_super


--join on more than 2 tables
select i.Ins_Name , c.Crs_Name ,ic.Evaluation
from Instructor i inner join Ins_Course ic
on i.Ins_Id = ic.Ins_Id
inner join course c
on c.Crs_Id = ic.Crs_Id

use ITI
--select
--update the grade saly on java course 90 instead 
-- student_course  student   course

select s.St_Fname ,c.Crs_Name ,sc.Grade
from Student s inner join  Stud_Course sc
on s.St_Id = sc.St_Id
inner join course c 
on c.Crs_Id = sc.Crs_Id
where s.St_Fname = 'saly' and c.Crs_Name ='java'


update sc
set sc.Grade = 90
from Student s inner join  Stud_Course sc
on s.St_Id = sc.St_Id
inner join course c 
on c.Crs_Id = sc.Crs_Id
where s.St_Fname = 'saly' and c.Crs_Name ='java'

