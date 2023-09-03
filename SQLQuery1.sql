drop database ArticleDb

create database ArticleDb

use ArticleDb

create table Articles
(ArticleId int primary key,
Title nvarchar(50),
Content nvarchar(50),
PublishDate datetime
)

insert into Articles values(101,'Books','To know and die','10/11/2022 12:00:00')
insert into Articles values(102,'Notepads','Quite helpful ','04/08/2022 12:00:00')
insert into Articles values(103,'Fruits','Makes Soul feel proud','09/03/2023 16:30:00')


select * from Articles