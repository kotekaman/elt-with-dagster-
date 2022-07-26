{{ config(order_by='emp_no', engine='MergeTree()', materialized='table') }}
select 
  dept_no, 
  emp_no,
  from_date, 
  if(
    to_date = toDate('1970-01-01'), 
    toDate('2005-01-01'), 
    to_date
  ) as to_date 
from 
  dwh.employees_dept_manager