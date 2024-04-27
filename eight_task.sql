SELECT name, places
FROM wards
where places < (
    SELECT AVG(places) 
    FROM wards);

