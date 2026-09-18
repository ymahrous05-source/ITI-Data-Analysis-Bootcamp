use iti
--Transact SQL
--1.TOP 
SELECT Top 1 *
From instructor

SELECT Top 5 *
From instructor

select  max(salary)
from Instructor

select top 1 salary
from instructor
order by salary desc

--NEWID()  --Generate Guid 
SELECT NEWID()

SELECT * , NEWID() AS GenerateId
FROM Student
order by newid()

select top 1 *
from student
order by newid()

--Select into => copy[structure + data] from  table to another table in the same database or another database
select * into newinstructor   --create table newinstructor()   + insert into newinstructor values(),(),()
from Instructor

select Ins_Id , Ins_Name into tab1
from Instructor

select * into DBBanha.dbo.instructor
from Instructor

select * into tab2
from student
where st_address = 'cairo'

select * into tab3
from student
where st_id<1


--insert into [insert based on select]
insert into tab3
select *
from student
where St_Address = 'alex'

--Built_in Functions
---Casting Functions
select St_Fname +' '+ St_Lname
from student

select St_Fname +' '+ st_age    -- noura 30   ahmed 40   2+3= 5  '30'
from student

--convert(datatype, col)

select St_Fname +' '+st_lname+' '+ convert(varchar(50),st_age) +' ' +convert(varchar(50),st_id)   -- noura 30   ahmed 40   2+3= 5  '30'
from student

--Cast(col as datatype)
select St_Fname +' '+ cast(st_age as varchar(50))    -- noura 30   ahmed 40   2+3= 5  '30'
from student

--concat => convert all datatypes inside it to varchar  + concat
select concat( St_Fname ,' ',st_lname,' ',st_age ,' ' ,st_id)   -- noura 30   ahmed 40   2+3= 5  '30'
from student

select concat_ws(' ',St_Fname ,st_lname,st_age ,st_id)   -- noura 30   ahmed 40   2+3= 5  '30'
from student


--null functions
--isnull(col ,'staticvalue')
select st_id, isnull(St_Fname , 'no name')
from student

select st_id, isnull(St_Fname , St_Lname)
from student
--coalesce(col,col2,col2,static)
select st_id, coalesce(St_Fname , St_Lname , 'no first or last name')
from student

select st_id, coalesce(St_Fname , St_Lname , st_address , 'no value')
from student

--string function
--format(col , format)
select getdate()
select format(getdate(),'dddd MMMM yyyy') --name of
select format(getdate(),'dd MM yyyy') --the number of
select format(getdate(),'ddd MMM yyyy')

select format(getdate(),'dd ddd  MM MMM  yyyy')

---DATETIME Functions
select day(getdate())
select month(getdate())
select year(getdate())

select isdate(getdate())

---Ranking Functions
SELECT * FROM
(select * ,ROW_Number() over(order by salary desc) as RN
         ,Dense_Rank() over(order by salary desc) as DR
         ,RANK() over(order by salary desc) as R
         ,NTILE(3) over(order by salary desc) as N
from Instructor) AS GG
WHERE DR = 1 OR DR =2

--SChema
create schema hr

alter schema hr
transfer dbo.tab1


alter schema hr
transfer dbo.tab2

drop schema hr

drop table hr.tab1
drop table hr.tab2


drop schema hr

--security
use DBBanha
create schema hr

alter schema hr
transfer dbo.instructor

alter schema hr
transfer dbo.employee

use iti
--View
create or alter view Vstds
with encryption
as
  select st_id, St_Fname , St_Lname
  from student


select * from Vstds

insert into Vstds
values(18,'alaa','ahmed')

sp_helptext Vstds

create or alter view Vcairo
with encryption
as
  select St_Fname , St_Address
  from student
  where St_Address ='cairo'

select * from Vcairo


create or alter view Vjoin
with encryption
as
  select s.St_Fname ,i.Ins_Name ,d.Dept_Name , c.Crs_Name
  from student s inner join Department d
  on d.Dept_Id = s.Dept_Id
  inner join Instructor i
  on d.Dept_Id= i.Dept_Id
  inner join Ins_Course ic
  on i.Ins_Id = ic.Ins_Id
  inner join course c
  on c.Crs_Id = ic.Crs_Id


  select * from vjoin










