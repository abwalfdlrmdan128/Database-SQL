use master;
create database Campany2
on(
name=Em_Data,
filename='D:\data base\sectiontaskes\CAM_Data.mdf',
Size=10,
MaxSize=50,
FileGrowth=5
)
LOG on(
Name=Em_Log,
filename='D:\data base\sectiontaskes\CAM_Log.ldf',
Size=10,
MaxSize=50,
FileGrowth=5
)

use Campany2;
create table projects (
    project_id int primary key,
    name varchar(255) not null,
    description text,
    start_date date,
    end_date date
);

create table departments (
    department_id int primary key,
    name varchar(255) not null,
    manager_id int null
);

create table employees (
    employee_id int primary key ,
    first_name varchar(100) not null,
    last_name varchar(100) not null,
    middle_name varchar(100),
    job_title varchar(255),
    department_id int,
    manager_id int,
    hire_date date,
    salary decimal(10,2),
    address_id int,
    foreign key (department_id) references departments(department_id),
    foreign key (manager_id) references employees(employee_id),
    foreign key (address_id) references addresses(address_id)
);

create table employees_projects (
    employee_id int,
    project_id int,
    primary key (employee_id,project_id),
    foreign key (employee_id) references employees(employee_id),
    foreign key (project_id) references projects(project_id)
);

create table towns (
    town_id int primary key ,
    name varchar(255) not null
);

create table addresses (
    address_id int primary key,
    address_text text not null,
    town_ID int,
    foreign key (town_ID) references towns(town_id)
);
