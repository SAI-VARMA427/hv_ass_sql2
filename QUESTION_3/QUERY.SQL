create database order_details

create table consumer(
	consumer_id int not null primary key unique,
    consumer_name varchar(50) not null,
    order_no int not null,
    order_date date not null,
    purchase_amount int not null,
    salesmanager_id int not null,
    grade int not null
);

insert into consumer values(2001,"Sai",1001,"2022-10-15",450,3001,300),(2002,"Kiran",1002,"2022-09-10",700,3002,450),
(2003,"Ravi",1003,"2022-08-25",390,3003,500),(2004,"Akhil",1004,"2022-06-20",920,3004,250),(2005,"Latha",1005,"2022-12-20",250,3005,600),
(2006,"Madhavi",1006,"2022-03-01",120,3002,200),(2007,"Ramya",1007,"2022-01-15",50,3002,700);

create table orders(
	order_no int not null,
    order_date date not null,
    purchase_amount int not null,
    consumer_id int not null,
    salesmanager_id int not null
);

insert into orders values(1001,"2022-10-15",450,2001,3001),(1002,"2022-09-10",700,2002,3002),(1003,"2022-08-25",390,2003,3003),
(1004,"2022-06-20",920,2004,3004),(1005,"2022-12-20",250,2005,3005),(1006,"2022-03-01",120,2006,3002),(1007,"2022-01-15",50,2007,3002);

create table sales_manager(
	salesmanager_id int not null,
    name varchar(50) not null,
    city varchar(50) not null
);

insert into sales_manager values (3001,"Nagendra","Rajahmundry"),(3002,"Teja","Kakinada"),(3003,"Lekha","Tuni"),
(3004,"Lakshmi","Rajahmundry"),(3005,"Ramesh","Rajahmundry");

SELECT * FROM orders WHERE purchase_amount between 100 and 500;

select name,city,order_no,order_date,purchase_amount,consumer_name from consumer ineer join sales_manager where grade<500 order by consumer_id ASC;