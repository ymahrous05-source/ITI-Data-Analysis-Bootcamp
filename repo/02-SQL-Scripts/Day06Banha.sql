use iti
--Variables
--local variables
--Declare:
  declare @q int
--Assign value:
 select @q = 10
 set @q = 10
 --print 
  print @q
  select @q

 declare @w int = 20
 select @w
 
 declare @e int
 select @e = st_age
 from student
 where st_id=1
 
 select @e

 declare @h int
 select @h = st_age
 from student
 where St_Address = 'cairo'
 select @h

declare @t table(col int)
insert into @t
 select st_age
 from student
 where St_Address = 'cairo'

 select * from @t

 declare @u table(id int , fname varchar(50) ,address varchar(50),age int)

 insert into @u
 select st_id,St_Fname, st_address, st_age
 from student
 where St_Address = 'alex'

 select * from @u


--Update + Select at the same time
declare @name varchar(50)
update student
set St_Fname = 'aya' , @name = St_Fname
where st_id = 1

select @name


--global variables

select @@SERVERNAME

select @@VERSION

select * from student

select @@ROWCOUNT
select @@ROWCOUNT --1


select @@ERROR

select @@IDENTITY

--if statement
/*
if()
 ---
else
---
*/
declare @l int
update instructor
set Salary +=1000
select @l = @@ROWCOUNT     --17
if(@l =1)
   print '1 row updated'
if(@l>1)
 begin
   select 'hello user'
   select 'multi rows updated'
 end
else
 print 'no rows updated'


--while loop
declare @n int = 10  
while @n<=20   -- 10  11   12    13  14  15
 begin
   set @n +=1     --11  12  13   14  15   16
   if @n = 14
     continue    -- skip
   if @n = 16
     break       -- break
  select @n   -- 11    12     13   15
 end


--Stored Procedure
go
create or alter procedure sp_getstudents @stid int
as
  select *
  from Student
  where St_Id =@stid

exec sp_getstudents 1

go
create or alter procedure sp_getstdbyaddress @address varchar(50)
as
  select st_fname , st_address
  from student 
  where St_Address = @address

exec sp_getstdbyaddress 'alex'

go
create or alter procedure sp_deleteTopic @topid int
as
  if not exists (select Top_Id
  from course
  where Top_Id = @topid)
  delete from topic
  where Top_Id = @topid
  else
   select 'this topic can''t be deleted because there is arelation'

   exec sp_deleteTopic 5
   exec sp_deleteTopic 1
go

--parameters
---input  parameter
 create or alter procedure sp_sumdata @number1 int ,  @number2 int
as
  select  @number1 + @number2

exec sp_sumdata 2 , 3


go
---output parameter
create or alter procedure sp_getstdbyid @id int ,  @fname varchar(50) output ,@age int output
as
select @fname= st_fname ,@age = St_age
from student
where st_id = @id

declare @x varchar(50) , @y int 

exec sp_getstdbyid 2 ,@x output , @y output

select @x , @y


--types of procedure
---user_defiened
---built_in
---sp_helptext
---sp_rename('newcourse' , course)


--Trigger
create or alter trigger tr_denyinsert
on student
instead of insert
  as
    select 'you can''t insert on this able'

insert into student(St_Id , St_Fname)
values(19,'yara')



create or alter trigger tr_allowinsert
on student
after insert
  as
    select 'data inserted successfully'

insert into student(St_Id , St_Fname)
values(19,'yara')


create or alter trigger tr_allowupdate
on student
after update
as
  select SUSER_SNAME() ,HOST_NAME() , GETDATE(),DB_NAME()

update student 
set St_Fname = 'noura'
where st_id = 1

create or alter trigger tr_denyupdate
on student
instead of update
as
  select 'you can''t update on this table'


update student 
set St_Fname = 'aya'
where st_id = 1


create or alter trigger tr_dendelete
on student
instead of delete
as
  select 'you can''t delete from this table'

delete from student

create trigger tr_denydmls
on course
instead of insert , update , delete
as
 select 'dmls are not allowed on this table'

 insert into Course (Crs_Id , Crs_Name)
 values(1400,'mm')


 ---                inserted                  deleted
--allow insert      new data                  empty
--allow delete       empty                     deleted data
--allow update       new data                  old data





select name
from sys.triggers
drop trigger tr_allowinsert
drop trigger tr_allowupdate
drop trigger tr_allowdelete
drop trigger tr_denydelete












