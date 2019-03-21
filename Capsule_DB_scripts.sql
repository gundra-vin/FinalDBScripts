create table if not exists Project(Project_ID int(10) primary key,Project varchar(100),Start_Date Date, End_Date Date, Priority int(2));
Insert into Project values(01,"Capsule Project","2019-03-01","2019-01-11",10);
Insert into Project values(02,"Final Project","2019-03-20","2019-04-03",10);
delete from Project where Task_ID = 6;
drop table Project;
select * from Project;

Create table if not exists Parent_Task(Parent_ID int(10) primary key, Parent_Task varchar(200));
Insert into Parent_Task values(01,"UI Build");
Insert into Parent_Task values(02,"Middleware Build");
Insert into Parent_Task values(03,"Database Layer");
delete from Parent_Task where Parent_ID = 0;
select * from Parent_Task;

Create table if not exists Task(Task_ID int(10) primary key, Parent_ID int(10), Project_Id int(10), Task varchar(200), Start_Date Date, End_Date Date, Priority int(2), Status tinyint(1), foreign key(Parent_ID) references Parent_Task(Parent_ID),foreign key(Project_ID) references Project(Project_ID));
Insert into Task values(01,01,01,"UI HTML and Bootstrap Pages","2019-01-10","2019-01-11",10,0);
Insert into Task values(02,01,01,"Build restful services","2019-01-10","2019-01-11",10,0);

delete from Task where Task_ID = 6;
drop table Task;
select * from Task;

Create table if not exists Users(User_ID int(10) primary key, FirstName varchar(100), LastName varchar(100), Employee_ID int(10), Project_ID int(10), Task_ID int(10), foreign key(Project_ID) references Project(Project_ID),foreign key(Task_ID) references Task(Task_ID));
Insert into Users(User_ID,FirstName,LastName,Employee_ID) values(01,"Vijayan","Gopal",1000);
Insert into Users(User_ID,FirstName,LastName,Employee_ID) values(02,"Vijay","Sankar",1000);
select * from Users;
use sakila