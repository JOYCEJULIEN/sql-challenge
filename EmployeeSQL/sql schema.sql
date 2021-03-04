CREATE TABLE employees (
    emp_no INTEGER   NOT NULL,
    emp_title_id VARCHAR   NOT NULL,
    birth_date VARCHAR   NOT NULL,
    first_name VARCHAR   NOT NULL,
    last_name VARCHAR   NOT NULL,
    sex VARCHAR   NOT NULL,
    hire_date VARCHAR   NOT NULL,
    PRIMARY KEY (emp_no)
);
CREATE TABLE departments (
    dept_no VARCHAR   NOT NULL,
    dept_name VARCHAR   NOT NULL,
    PRIMARY KEY (dept_no)
);
CREATE TABLE dept_emp (
    dept_emp_id VARCHAR NOT NULL,
    emp_no INTEGER   NOT NULL,
    dept_no VARCHAR   NOT NULL,
    PRIMARY KEY (dept_emp_id),
    FOREIGN KEY (emp_no) REFERENCES employees (emp_no),
    FOREIGN KEY (dept_no) REFERENCES departments (dept_no)
);
CREATE TABLE dept_manager (
    dept_manager_ID VARCHAR NOT NULL,
    dept_no VARCHAR   NOT NULL,
    emp_no INTEGER  NOT NULL,
    PRIMARY KEY (dept_manager_ID),
    FOREIGN KEY (emp_no) REFERENCES employees (emp_no),
    FOREIGN KEY (dept_no) REFERENCES departments (dept_no)

);
CREATE TABLE salaries (
    salaries_id INTEGER not null,
    salary INTEGER   NOT NULL,
    emp_no INTEGER  NOT NULL,
    PRIMARY KEY (salaries_id),
    FOREIGN KEY (emp_no) REFERENCES employees (emp_no)
);
CREATE TABLE titles (
    title_id VARCHAR   NOT NULL,
    title VARCHAR  NOT NULL,
    PRIMARY KEY (title_id)
);
