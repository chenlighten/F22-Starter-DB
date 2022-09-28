/*
 Create table statement.
 */
create database if not exists f22_databases;
use f22_databases;

create table if not exists columbia_students
(
    auto_id     int auto_increment
        primary key,
    last_name   varchar(128) not null,
    first_name  varchar(128) not null,
    middle_name varchar(128) null,
    email       varchar(256) not null,
    uni         varchar(12)  not null,
    constraint columbia_student_email_uindex
        unique (email),
    constraint columbia_student_uni_uindex
        unique (uni)
);

/*
 Example insert statement. Note that since auto_id is auto-increment, the insert
 statement does not need to specify it.
 */
 insert into columbia_students (last_name, first_name, middle_name, email, uni)
    values ("Ferguson", "Donald", "Francis", "dff@cs.columbia.edu", "dff9");
 insert into columbia_students (last_name, first_name, middle_name, email, uni)
    values ("Xu", "Shichen", "", "sx2314@columbia.edu", "sx2314");
