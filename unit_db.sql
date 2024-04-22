CREATE TABLE IF NOT EXISTS departments (
    id SERIAL PRIMARY KEY,
    name VARCHAR(50),
    building INT
);

CREATE TABLE IF NOT EXISTS wards (
    id SERIAL PRIMARY KEY,
    name VARCHAR(50),
    places INT,
    department_id INT,
    FOREIGN KEY (department_id) REFERENCES departments(id)
);

CREATE TABLE IF NOT EXISTS doctors (
    id SERIAL PRIMARY KEY,
    name VARCHAR(50),
    surname VARCHAR(50),
    premium INT,
    salary INT
);

CREATE TABLE IF NOT EXISTS examinations (
    id SERIAL PRIMARY KEY,
    name VARCHAR(50)
);

CREATE TABLE IF NOT EXISTS doctors_examinations (
    id SERIAL PRIMARY KEY,
    end_time TIME,
    start_time TIME,
    doctor_id INT,
    examination_id INT,
    ward_id INT,
    FOREIGN KEY (examination_id) REFERENCES examinations(id),
    FOREIGN KEY (doctor_id) REFERENCES doctors(id),
    FOREIGN KEY (ward_id) REFERENCES wards(id)
);

INSERT INTO departments (name, building) VALUES
    ('Pediatrics', 1),
    ('Traumatology', 2),
    ('Neurology', 3);

INSERT INTO doctors (name, surname, premium, salary) VALUES
    ('John', 'Smith', 0, 3000),
    ('Mary', 'Johnson', 600, 3500),
    ('Oliver', 'Davis', 700, 4000);

INSERT INTO examinations (name) VALUES
    ('X-ray'),
    ('Ultrasound'),
    ('Blood Test');

INSERT INTO wards (name, places, department_id) VALUES
    ('Pediatrics Ward #1', 10, 1),
    ('Pediatrics Ward #2', 8, 1),
    ('Pediatrics Ward #3', 8, 1),
    ('Pediatrics Ward #4', 2, 1),
    ('Traumatology Ward #1', 8, 2),
    ('Traumatology Ward #2', 15, 2),
    ('Traumatology Ward #3', 8, 2),
    ('Traumatology Ward #4', 2, 2),
    ('Neurology Ward #1', 5, 3),
    ('Neurology Ward #2', 5, 3),
    ('Neurology Ward #3', 5, 3),
    ('Neurology Ward #4', 5, 3),
    ('Neurology Ward #5', 1, 3);

INSERT INTO doctors_examinations (end_time, start_time, doctor_id, examination_id, ward_id) VALUES
    ('10:00', '09:00', 1, 1, 1),
    ('12:00', '11:00', 2, 2, 2),
    ('14:00', '13:00', 3, 3, 3);
