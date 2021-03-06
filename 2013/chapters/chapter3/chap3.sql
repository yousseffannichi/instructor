create table acctmanager (
	amid char(4),
	amfirst varchar2(12),
	amlast varchar2(12),
	amedate date default sysdate,
	amsal number(8,2),
	amcomm number(7,2) default 0,
	amearn as (amsal + amcomm),
	region char(2)
);

select table_names from user_tables;

desc acctmanager

select column_name, data_type, data_default
  from user_tab_columns
 where table_name = 'ACCTMANAGER';

create table cust_mkt as
 (select customer#, city, state, zip, referred, region from customers);

desc cust_mkt

select * from cust_mkt;

alter table publisher add (ex number(4));

alter table books modify (title varchar2(10));

alter table books modify (retail number(5,1));

alter table publisher add (rating char(1));

select * from publisher;

alter table publisher modify (rating default 'N');

select * from publisher;

alter table acctmanager modify (amlast varchar2(18));

