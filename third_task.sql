select departments.name ,count(wards.id) as number_of_wards
from wards
join departments on department_id = departments.id
group by (departments.name);