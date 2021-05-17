# SQL Project - Employee Database

![image](https://user-images.githubusercontent.com/69601778/118566392-a3d2ad00-b728-11eb-9f8e-d406309a115f.png)

## Background

This was a research project on employees of a fictitious corporation from the 1980s and 1990s. All that remained of the database of employees from that period were six CSV files.

For this assignment, I designed the tables to hold data in the CSVs, imported the CSVs into a SQL database, and answered questions about the data. In other words, I performed:

1. Data Engineering

2. Data Analysis


#### Data Modeling

Inspected the CSVs and sketched out an ERD of the tables. 
![image](https://user-images.githubusercontent.com/69601778/118566584-00ce6300-b729-11eb-959d-ae6df3accb66.png)

#### Data Engineering

* Used the information to create a table schema for each of the six CSV files, specifying data types, primary keys, foreign keys, and other constraints.

* Imported each CSV file into the corresponding SQL table.

#### Data Analysis

1. Listed the following details of each employee: employee number, last name, first name, sex, and salary.

2. Listed first name, last name, and hire date for employees who were hired in 1986.

3. Listed the manager of each department with the following information: department number, department name, the manager's employee number, last name, first name.

4. Listed the department of each employee with the following information: employee number, last name, first name, and department name.

5. Listed first name, last name, and sex for employees whose first name is "Hercules" and last names begin with "B."

6. Listed all employees in the Sales department, including their employee number, last name, first name, and department name.

7. Listed all employees in the Sales and Development departments, including their employee number, last name, first name, and department name.

8. In descending order, listed the frequency count of employee last names, i.e., how many employees share each last name.
