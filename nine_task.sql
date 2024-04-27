SELECT departments.building, sum(wards.places)
FROM departments
JOIN wards ON departments.id = wards.department_id
where wards.places > 6
and departments.building in (2,3)
group by building
having sum(wards.places) > 25;
