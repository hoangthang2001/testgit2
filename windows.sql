create database windowsfrom
go
use windowsfrom
go
Create table Sanpham(
	id int,
	name nvarchar(20),
	quanity int,
	phone int
)

insert into Sanpham(id,name,quanity,phone) values (01 , 'Chi', 15, 095454545);

select * from Sanpham