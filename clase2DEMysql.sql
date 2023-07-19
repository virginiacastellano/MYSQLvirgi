CREATE TABLE user (
id int not null auto_increment,
name varchar(50) not null,
edad int not null,
email varchar(100) not null,
primary key (id)
);

insert INTO user (name, edad, email) values ('Oscar', 25 , 'oscar@gmail.com');
insert INTO user (name, edad, email) values ('Juana', 30 , 'juani@gmail.com');
insert INTO user (name, edad, email) values ('Lucas',19 , 'lucas@gmail.com');
insert INTO user (name, edad, email) values ('chanchito', 7 , 'oscar@gmail.com');

UPDATE user SET email = 'chanchito@gmail.com' where id = 4;
select * from user limit 1;
select * from user where edad > 15;
select * from user where edad >= 15;
select * from user where edad >= 19 and email = 'juani@gmail.com';
select * from user where edad > 19 or email = 'chanchito@gmail.com';
select * from user where email != 'chanchito@gmail.com';
select * from user where edad between 25 and 30;
select * from user where email like '%gmail%';
select * from user where email like '%gmail';
select * from user where email like 'oscar%';

select * from user order by edad asc;
select * from user order by edad desc;

select max(edad) as mayor from user;
select min(edad) as menor from user;