use demo_db_a;

create table test (
    id int not null auto_increment ,
    name char(20) not null ,
    primary key(id)
);

desc test;
