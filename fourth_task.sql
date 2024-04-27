select departments.name as department_name , sum(doctors.premium) as sum_of_premium
from doctors_examinations
join wards on ward_id = wards.id
join departments on wards.department_id = departments.id
join doctors on doctor_id = doctors.id
group by (departments.name);