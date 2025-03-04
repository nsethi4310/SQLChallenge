--1.List the following details of ea(ch employee: employee number, last name, first name, sex, and salary.

select first_name, last_name, employees.emp_no, sex, salaries  from employees, salaries where employees.emp_no=salaries.emp_no;

--2. List first name, last name, and hire date for employees who were hired in 1986.

select first_name, last_name, hire_date  from employees
where hire_date between '1986-01-01'and '1986-12-31'

--3.List the manager of each department with the following information: department number, department name, the manager's employee number, last name, first name.

SELECT dept_manager.dept_no, employees.emp_no, first_name,last_name, departments.dept_name
FROM dept_manager
LEFT JOIN employees
ON dept_manager.emp_no = employees.emp_no
LEFT JOIN departments
ON dept_manager.dept_no=departments.dept_no;

--4.List the department of each employee with the following information: employee number, last name, first name, and department name.
SELECT dept_emp.dept_no, employees.emp_no, first_name,last_name, departments.dept_name
FROM dept_emp
LEFT JOIN employees
ON dept_emp.emp_no = employees.emp_no
LEFT JOIN departments
ON dept_emp.dept_no=departments.dept_no;

--5. List first name, last name, and sex for employees whose first name is "Hercules" and last names begin with "B."

Select first_name, last_name,sex from employees where first_name= 'Hercules'
and last_name like'B%'


--6. List all employees in the Sales department, including their employee number, last name, first name, and department name.

Create view Department_emp AS
SELECT  employees.emp_no, first_name,last_name, departments.dept_name
FROM dept_emp
LEFT JOIN employees
ON dept_emp.emp_no = employees.emp_no
LEFT JOIN departments
ON dept_emp.dept_no=departments.dept_no;

Select * from Department_emp where dept_name = 'Sales'

--7. List all employees in the Sales and Development departments, including their employee number, last name, first name, and department name.

Select * from Department_emp where dept_name = 'Sales' or dept_name='Development'

--8. In descending order, list t	he frequency count of employee last names, i.e., how many employees share each last name.


SELECT last_name, COUNT(last_name) AS "frequency"
FROM employees
GROUP BY last_name order by frequency desc;




