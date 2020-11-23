-- Lists the following details of each employee: employee number, last name, first name, sex, and salary.
SELECT
	e.emp_no
	,e.last_name
	,e.first_name
	,e.sex
	,s.salary
FROM
	"Employees" e
JOIN "Salaries" s on e.emp_no = s.emp_no
;

-- Lists first name, last name, and hire date for employees who were hired in 1986.
SELECT
	first_name
	,last_name
	,hire_date
FROM
	"Employees"
WHERE 1=1
	AND hire_date LIKE '%1986'
ORDER BY hire_date ASC
;

-- Lists the manager of each department with the following information: department number, department name, the manager's employee number, last name, first name.
SELECT
	d_m.dept_no
	,d.dept_name
	,d_m.emp_no
	,e.last_name
	,e.first_name
FROM
	"Dept_Manager" d_m
JOIN "Departments" d on d_m.dept_no = d.dept_no
JOIN "Employees" e on d_m.emp_no = e.emp_no
LIMIT 10
;

-- Lists the department of each employee with the following information: employee number, last name, first name, and department name.
SELECT
	e.emp_no
	,e.last_name
	,e.first_name
	,d.dept_name
FROM
	"Employees" e
JOIN "Dept_Emp" d_e on e.emp_no = d_e.emp_no
JOIN "Departments" d on d_e.dept_no = d.dept_no
;

Lists first name, last name, and sex for employees whose first name is "Hercules" and last names begin with "B."
SELECT
	first_name
	,last_name
	,sex
FROM
	"Employees"
WHERE 1=1
	AND first_name = 'Hercules'
	AND last_name LIKE 'B%'
;

-- Lists all employees in the Sales department, including their employee number, last name, first name, and department name.
SELECT
	e.emp_no
	,e.last_name
	,e.first_name
	,d.dept_name
FROM
	"Employees" e
JOIN "Dept_Emp" d_e on e.emp_no = d_e.emp_no
JOIN "Departments" d on d_e.dept_no = d.dept_no
WHERE 1=1
	AND d.dept_name = 'Sales'
LIMIT 10
;

-- Lists all employees in the Sales and Development departments, including their employee number, last name, first name, and department name.
SELECT
	e.emp_no
	,e.last_name
	,e.first_name
	,d.dept_name
FROM
	"Employees" e
JOIN "Dept_Emp" d_e on e.emp_no = d_e.emp_no
JOIN "Departments" d on d_e.dept_no = d.dept_no
WHERE 1=1
	AND d.dept_name = 'Sales'
	OR d.dept_name = 'Development'
LIMIT 10
;

-- In descending order, lists the frequency count of employee last names, i.e., how many employees share each last name.
SELECT
	DISTINCT last_name as distinct_last
	,COUNT(last_name)
FROM
	"Employees"
GROUP BY last_name
ORDER BY COUNT DESC
;