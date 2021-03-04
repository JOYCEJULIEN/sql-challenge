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