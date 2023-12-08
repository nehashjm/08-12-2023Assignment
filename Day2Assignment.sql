create database Day2Assignment
use Day2Assignment
Create table companyinfo
(CId int primary key identity,
Cname nvarchar(50) not null)
insert into companyinfo values ('SamSung'),('HP'),('Apple'),('Dell'),('Toshiba'),('Redmi')
select * from companyinfo
create table ProductInfo
(Pid int identity(101,1) primary key,
PName nvarchar(50) not null,
PPrice float,
PMDate date,
CId int foreign key references companyinfo(CId))
insert into ProductInfo values ('Laptop',55000.90,'12/12/2023',1)
insert into ProductInfo values ('Laptop',35000.90,'12/12/2012',2),
('Mobile',15000.90,'12/03/2012',2),
('Laptop',135000.90,'12/12/2012',3),
('Mobile',65000.90,'12/12/2012',3),
('Laptop',35000.90,'12/12/2012',5),
('Mobile',35000.90,'12/01/2012',5),
('EarPod',1000.90,'12/01/2022',3),
('Laptop',85000.90,'12/12/2021',6),
('Mobile',55000.90,'12/12/2020',1)
select * from ProductInfo
select * from companyinfo c join ProductInfo e on c.CId=e.CId
select e.PName,c.Cname from companyinfo c join ProductInfo e on c.CId=e.CId
select e.PName,c.Cname from companyinfo c cross join ProductInfo e 