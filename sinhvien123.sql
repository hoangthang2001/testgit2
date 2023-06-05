Create database Student
go
use Student
go
create table Sinhvien(
	id int,
	name nvarchar(20),
	age int,
	gender int,
	address nvarchar(20)
)

insert into Sinhvien (id,name,age,gender,address) values (1,N'C',0,1,N'Ha noi')
select * from Sinhvien