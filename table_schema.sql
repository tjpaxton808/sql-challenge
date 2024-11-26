create table titles (
    title_id varchar(10) primary key,
    title varchar(50) not null
);

create table departments(
    dept_no varchar(10) primary key,
    dept_name varchar(50) not null
);

create table employees(
    emp_no int primary key,
    emp_title_id varchar(10),
    birth_date date not null,
    first_name varchar(50) not null,
    last_name varchar(50) not null,
    sex char(1) not null,
    hire_date date not null,
    foreign key (emp_title_id) references titles(title_id)
);

create table salaries(
    emp_no int primary key,
    salary int not null,
    foreign key (emp_no) references employees(emp_no)
);

create table dept_emp(
    emp_no int,
    dept_no varchar(10),
    primary key (emp_no, dept_no),
    foreign key (emp_no) references employees(emp_no),
    foreign key (dept_no) references departments(dept_no)
);

create table dept_manager(
    dept_no varchar(10),
    emp_no int primary key,
    foreign key (emp_no) references employees(emp_no),
    foreign key (dept_no) references departments(dept_no)
);