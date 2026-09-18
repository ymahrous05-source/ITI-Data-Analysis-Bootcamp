use iti
--Aggregate Functions
--MAX()   ,MIN()  => col of datatype numeric or varchar
--Count(*)  colname   (skip null)
--Sum() ,Avg() => col of numeric datatype   (skip null)

select Max(Salary) as MaxSalary ,Min(Salary) as MinSalary
from Instructor

select Count(*) ,Count(Salary),Count(ins_Degree)
from Instructor

select Sum(Salary) as TotalSalary ,Avg(Salary) as AvgSalary
from Instructor


--Group by
Select count(st_id),Dept_Id
from student
group by Dept_Id

select max(salary) ,Dept_id
from instructor
group by Dept_id



select max(salary) ,Dept_id
from instructor
where Dept_Id in (10 ,20 ,30)
group by Dept_id

select count(st_id) , d.Dept_Name , D.Dept_Id  --3
from student s inner join Department d    --1
on d.Dept_Id = s.Dept_Id 
GROUP BY d.Dept_Name , D.Dept_Id          --2


--HAVING
Select Count(st_id) ,St_Address
from student
where St_Address like '_a%'         
group by St_Address 
having Count(st_id)>3

--Sub Querey   
--age < avg(ages)
select *
from student
where st_age<(select avg(st_age)
              from student)
-- id name  age        32
--                     32
--                     32
select *   , (select count(st_id)
              from student)
from Student

--Set Operators[Compine The Result Of 2 OR More Select Statement]  Union  Union all  Intersect   Except 
-- 2 Conditions 
--- the number of resulted cols  from 1st select = the number of resulted cols  from 2sd select
--- the Datatype of resulted cols  from 1st select =  the Datatype of resulted cols  from 2nd select
Select st_Fname ,St_Age
From Student
union
Select ins_name , Salary
From Instructor

Select st_Fname 
From Student
union  all
Select ins_name 
From Instructor


Select st_Fname 
From Student
intersect
Select ins_name 
From Instructor

Select ins_name 
From Instructor
except
Select st_Fname 
From Student


--Data Types
--Numeric Datatypes
--bit => 0 or 1 
--tinyint => 1 Byte  = 4 bit   -127   + 128
--smallint => 2 Byte  = 8 bit  
--int => 4 Byte  = 16 bit
--bigint => 8 Byte  = 8*4 bit

--Fractions
--smallMoney => 4Byte : 0000
--Money => 8Byte : 0000
--real => 8Byte : 0000000
--float => 8Byte : 000000000000000
--Decimal(10,4) => 000000:0000

--String Dataypes
--char(10)   a h m e d 0 0 0 0 0            char(max)    fixed length char
--varchar(10) a h m e d                     varchar(max) variable length char
--nchar(10)    nchar(max)      nvarchar(10)  nvarchar(max)

-- Date Time datatypes
--Date =>  mm/dd/yy
--time =>  hh:mm:ss  123
--smalldatetime =>  mm/dd/yy  hh: mm: 00
--datetime =>  mm/dd/yy  hh: mm: 123
--datetime(5) =>  mm/dd/yy  hh: mm: 12345
--datetimeoffeset









