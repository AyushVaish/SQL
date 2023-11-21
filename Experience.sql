select distinct e.manager_id as 
"employee_id",e1.first_name,e1.last_name,e1.salary,d.department_name,
(datediff("2022-06-08",e1.hire_date)/365) as "Experience"

from employees e join 
employees e1 on 
e.manager_id = e1.employee_id join 
departments d on 
e1.department_id = d.department_id

where (datediff("2022-06-08",e1.hire_date)/365) > 25

order by employee_id
