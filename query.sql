select *
from employees

select *
from employees
where salary > (SELECT avg(salary)
from employees)

select *
from employees e
where salary > (SELECT avg(salary)
from employees
where DepartmentID = e.DepartmentID)