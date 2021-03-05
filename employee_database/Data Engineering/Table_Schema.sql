
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
    
	-- FOREIGN KEY (emp_no) REFERENCES Employees(emp_no),
	FOREIGN KEY (dept_no) REFERENCES Departments(dept_no)
);
select * from Department_Employees;

CREATE TABLE Department_Manager (
    dept_no varchar  NOT NULL,
    emp_no int   NOT NULL,
   
	-- FOREIGN KEY (emp_no) REFERENCES Employees(emp_no),
	FOREIGN KEY (dept_no) REFERENCES Departments(dept_no)
);
SELECT * from Department_Manager;

CREATE TABLE Employees (
    emp_no INT   NOT NULL,
    emp_title_id VARCHAR
    birth_date date   NOT NULL,
    first_name VARCHAR   NOT NULL,
    last_name VARCHAR   NOT NULL,
    sex VARCHAR   NOT NULL,
    hire_date date   NOT NULL,
	PRIMARY KEY (emp_no)
);
SELECT * from Employees;



CREATE TABLE Salaries (
    emp_no int   NOT NULL,
	salary INTEGER   NOT NULL,
      
	FOREIGN KEY (emp_no) REFERENCES Employees(emp_no)
);
SELECT * from Salaries;


CREATE TABLE Titles (
	emp_no int   NOT NULL,
    title VARCHAR   NOT NULL,
    
	FOREIGN KEY (emp_no) REFERENCES Employees(emp_no)
);
SELECT * from Titles;