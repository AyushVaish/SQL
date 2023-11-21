select employee_id,first_name,last_name,salary,hire_date,department_id
 from (

select employee_id,first_name,last_name,salary,hire_date,department_id,

dense_rank()over(partition by department_id order by salary desc) as "rnk"

from employees

where hire_date between date_sub("1998-01-01",interval 6 month) and "1998-01-01"
 
 ) as x

 where rnk = 1

 order by department_id,employee_id
