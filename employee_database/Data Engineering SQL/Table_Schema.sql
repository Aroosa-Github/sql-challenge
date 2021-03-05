
-- DATA ENGINEERING 
--Use the information you have to create a table schema for each of the six CSV files. 
--Remember to specify data types, primary keys, foreign keys, and other constraints.


CREATE TABLE Departments (
    dept_no varchar NOT NULL,
    dept_name VARCHAR   NOT NULL,
	PRIMARY KEY (dept_no)
);
select * from Departments;

CREATE TABLE Department_Employees (
    emp_no INT   NOT NULL,
	dept_no varchar NOT NULL,
    
	
	FOREIGN KEY (dept_no) 
);
select * from Department_Employees;

CREATE TABLE Department_Manager (
    dept_no varchar  NOT NULL,
    emp_no int   NOT NULL,
   
	
	FOREIGN KEY (dept_no) 
);
SELECT * from Department_Manager;

CREATE TABLE Employees (
    emp_no INT   NOT NULL,
    emp_title_id VARCHAR
    birth_date VARCHAR   NOT NULL,
    first_name VARCHAR   NOT NULL,
    last_name VARCHAR   NOT NULL,
    sex VARCHAR   NOT NULL,
    hire_date VARCHAR   NOT NULL,
	PRIMARY KEY (emp_no)
);
SELECT * from Employees;



CREATE TABLE Salaries (
    emp_no int   NOT NULL,
	salary INTEGER   NOT NULL,
      
	FOREIGN KEY (emp_no) 
);
SELECT * from Salaries;


CREATE TABLE Title (
	title_id int   NOT NULL,
    title VARCHAR   NOT NULL,
    
	
);
SELECT * from Title;