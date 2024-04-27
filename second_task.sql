select departments.building as number_of_building ,count(wards.id) as number_of_wards
from wards
join departments on department_id = departments.id
group by (departments.building)
ORDER BY departments.building ASC;