create database ineuron;
use ineuron;

create table courses
(Course_Id Char(6),
Course_Name Varchar(50),
Domain Varchar(20),
Faculty Varchar(20),
Student_intake int,
Mode_of_Delivery Varchar(10));

select * from courses;

drop table courses;
drop database ineuron;

Alter table courses rename Course_details;
Alter table course_details rename Courses;

Alter table courses change column Mode_of_delivery Delivery_Mode varchar(10);
select * from courses;

describe courses;

Alter table Courses add column Start_date date; 
select * from courses;

Alter table Courses drop column start_date;

### DATA MANIPULATION LANGUAGE

Insert into courses values
("DS1001","Data Science Pro","Data Science", "Saurabh",75,"Live");

select * from courses;

Insert into courses values
("DS1002","Data Science 2.0","Data Science", "Piyush",50,"Online"),
("ML1001","Machine learning Pro","Machine Learning", "Snigdha",75,"Hybrid"),
("GI1001","GFenerative AI Pro","Generative AI", "Shrikant",175,"Live");

Insert into courses(Course_ID,Course_Name,Domain,Student_Intake) values
("DL1001","Deep learning Pro","Deep Learning",75);

select * from courses;

set sql_safe_updates = 0;

update courses
set Faculty = "Mayank"
where Course_id = "DL1001";

update courses
set Course_name = "Generative AI Pro"
where Course_id = "GI1001";

delete from courses
where course_id = "DS1001";


### Data Definition Language - Constraints

create table courses
(Course_Id Char(6) unique,
Course_Name Varchar(50),
Domain Varchar(20),
Faculty Varchar(20),
Student_intake int,
Mode_of_Delivery Varchar(10));

Insert into courses values
("DS1001","Data Science Pro","Data Science", "Saurabh",75,"Live"),
("DS1002","Data Science 2.0","Data Science", "Piyush",50,"Online"),
("ML1001","Machine learning Pro","Machine Learning", "Snigdha",75,"Hybrid"),
("GI1001","GFenerative AI Pro","Generative AI", "Shrikant",175,"Live");

Insert into courses(Course_ID,Course_Name,Domain,Student_Intake) values
("DL1001","Deep learning Pro","Deep Learning",75);

select * from courses;

Insert into courses values
("DS1007","Data Science Pro","Data Science", "Saurabh",75,"Live");

create table courses
(Course_Id Char(6) unique,
Course_Name Varchar(50) Not null,
Domain Varchar(20),
Faculty Varchar(20),
Student_intake int,
Mode_of_Delivery Varchar(10));

Insert into courses values
("DS1001","Data Science Pro","Data Science", "Saurabh",75,"Live"),
("DS1002","Data Science 2.0","Data Science", "Piyush",50,"Online"),
("ML1001","Machine learning Pro","Machine Learning", "Snigdha",75,"Hybrid"),
("GI1001","GFenerative AI Pro","Generative AI", "Shrikant",175,"Live");

Insert into courses(Course_ID,Course_Name,Domain,Student_Intake) values
("DL1001","Deep learning Pro","Deep Learning",75);

select * from courses;

Insert into courses(Course_ID,Domain,Student_Intake) values
("DL1009","Deep Learning",75);

Alter table courses change column
Faculty Faculty varchar(20) default("Saurabh");

Insert into courses(Course_ID,Course_Name,Domain,Student_Intake) values
("DL1004","Deep learning 2.0","Deep Learning",75);

select * from courses;

alter table courses change column
Student_intake Student_intake int check(Student_intake >= 50); 

Insert into courses values
("ML1002","Machine Learning 2.0","Machine Learning", "Saurabh",55,"Live");

Alter table courses change column
Course_id Course_id char(6) Primary Key;

describe courses;
