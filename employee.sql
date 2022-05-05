create database employee;
use employee;
create table employee
(
e_id int primary key,
ename varchar(20) not null,
eno bigint
);
alter table employee
modify eno bigint;

alter table employee
modify ename varchar(20) not null;


update employee set ename='chaudhary'
where e_id=3;

alter table employee
add dob date not null;


insert into employee values (1,'gnm',703235);
insert into employee (e_id,ename) values (2,'srikanth');
insert into employee values (3,'chowdary',304235);
insert into employee values (4,'anupal',503235);
insert into employee values (5,'asish',103235);
insert into employee values (6,'harinadh',9032356200);
insert into employee(ename,eno,dob) values ('rahul',2033356200,'2000-11-01');

alter table employee add location varchar(20) default 'bangalore';

select * from employee;

update employee set dob='2000-09-05' where e_id=2



alter table employee modify e_id int auto_increment;

insert into employee (ename,eno,dob)values ('rohit',20222356200,'2000-12-10')


create sequence e_id_seq start with 8

alter table employee modify e_id default e_id_Seq.nextval;


insert into employee(ename,eno,dob,location) values('pankaj',2345566,'2000-01-09','kerala');
insert into employee(ename,eno,dob,location) values('snehith',123345566,'2000-02-09','kerala');
insert into employee(ename,eno,dob,location) values('yeswanth',2345566,'2000-03-11','kerala');
insert into employee(ename,eno,dob,location) values('praneeth',2345566,'2000-04-12','andhra');
insert into employee(ename,eno,dob,location) values('sai',2345566,'2000-08-12','andhra');
insert into employee(ename,eno,dob,location) values('aswin',2345566,'2000-10-12','andhra');
insert into employee(ename,eno,dob,location) values('darshan',987345566,'2000-12-12','andhra');






select * from employee where location != 'bangalore' ;


select * from employee where Location != 'bangalore' ;


select location,count(location)loc  from employee group by location having loc>=3;
select location,count(location)loc  from employee having loc>=1;
select location,count(location)loc  from employee group by location having loc>3;

select count(e_id),location from employee 
group by location;
select count(*),location from employee 
group by location;

select * from employee 
having location='bangalore';
select count(e_id) as no_of_emp,location from employee 
group by location order by no_of_emp desc;
select * from employee;

select * from employee where e_id between 1 and 10;

select * from employee where dob between '2000-01-01' and '2000-10-01';

select location,e_id from employee   where location='andhra' and e_id in (1,61,62,63,64);
select location,e_id from employee   where location='andhra' and e_id between 1 and 70;

select ename from employee where ename like '%a%';
select ename from employee where ename like '%a%' or '%b%';
select ename from employee where ename like 's%';
select ename from employee where ename like 's%h';

insert into employee(ename,dob) values ('fahal','2001-03-03');
select * from employee where ename like 'f%' and length(ename)>2;
select ename from employee where ename like '___a%';




create table salary(
slno int primary key auto_increment,
e_id int not null,
amt float not null,
sdate date default '2022-01-01'
);

insert into salary values(1001,1,10000.1,'2022-01-02');
insert into salary values(1002,2,12000.32,'2022-01-03');
insert into salary values(1003,3,13000.49,'2022-01-05');
insert into salary values(1004,4,14000.19,'2022-01-04');
insert into salary values(1005,5,15000.87,'2022-01-03');
insert into salary(e_id,amt,sdate) values(6,16000.21,'2022-01-01');
insert into salary(e_id,amt) values(6,16000.21);
insert into salary(e_id,amt) values(58,13400.561);
select * from salary;
select * from employee;

delete from salary where slno=1007;
select * from salary where sdate<=sysdate();

select e.ename from employee e inner join salary s on e.e_id=s.e_id where sdate<=sysdate();

select e.ename from employee e where e_id in (select e_id from salary s where sdate<=sysdate());

select e.ename from employee e where e_id in (select e_id from salary s where amt>12000);
select e_id from salary where amt>12000


select e.location, e.ename,sum(amt) from employee e where e_id in (select e_id from salary s where amt>12000) group by location;
(select avg(amt) from salary group by location;

select e.location,s.sum from employee e where e_id in (select e_id,sum(s.amt) sum from salary s group by e_id) group by e.location;

select e.ename,e.location,s.amt FROM employee e inner join salary s on e.e_id=s.e_id 
select s.amt, e.ename,e.location FROM employee e inner join salary s on e.e_id=s.e_id
 where s.amt>(select  avg(s.amt) as average FROM employee e inner join salary s on e.e_id=s.e_id group by location)

 (select e.ename,s.amt,avg(amt) average,e.location from employee e inner join salary s on e.e_id=s.e_id group by location having average > sa.amt);


select e_id,(select amt from salary )amt  from employee ;






select s.amt, e.ename,e.location FROM employee e inner join salary s on e.e_id=s.e_id
 where s.amt>any(select  avg(s.amt) as average FROM employee e inner join salary s on e.e_id=s.e_id group by location);
 
 select * from emp e1 join salary s1 on e1.eid=s1.eid where s1.AMT>(select avg(s.AMT) as avg_amt
 from emp e join salary s on e.eid=s.eid where e1.loc=e.loc group by e.loc);