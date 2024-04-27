select departments.name as department_name, count(doctors.id) as actual_number_of_doctors
from doctors_examinations
join wards on ward_id = wards.id
join departments on wards.department_id = departments.id
join doctors on doctor_id = doctors.id
group by departments.name
having count(doctors.id)>=1;