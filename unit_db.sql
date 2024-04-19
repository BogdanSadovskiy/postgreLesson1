create table if not exists departments(
id serial primary key,
name varchar(50),
building int
);
create table if not exists wards(
id serial primary key,
name varchar(50),
places int,
department_id int, 
 foreign key (department_id) references departments(id)
);

create table if not exists doctors(
id serial primary key,
name varchar(50),
surname varchar(50),
premium int,
salary int
);

create table if not exists examinations(
id serial primary key,
name varchar(50)
);

create table if not exists doctors_examinations(
id serial primary key,
end_time time,
start_time time,
doctor_id int,
examination_id int,
ward_id int,
foreign key (examination_id) references examinations(id),
foreign key (doctor_id) references doctors(id),
foreign key (ward_id) references wards(id)
);

INSERT INTO departments (name, building) VALUES
    ('Педіатрія', 1),
    ('Травматологія', 2),
    ('Неврологія', 3);


INSERT INTO doctors (name, surname, premium, salary) VALUES
    ('Іван', 'Петров', 0, 3000),
    ('Марія', 'Іванова', 600, 3500),
    ('Олег', 'Сидоров', 700, 4000);


INSERT INTO examinations (name) VALUES
    ('Рентген'),
    ('УЗД'),
    ('Аналіз крові');


INSERT INTO wards (name, places, department_id) VALUES
    ('Палата Педіатрії №1', 10, 1),
    ('Палата Педіатрії №2', 8, 1),
    ('Палата Педіатрії №3', 8, 1),
    ('Палата Педіатрії №4', 2, 1),
    ('Палата Травматології №1', 8, 2),
    ('Палата Травматології №2', 15, 2),
    ('Палата Травматології №3', 8, 2),
    ('Палата Травматології №4', 2, 2),
    ('Палата Неврології №1', 5, 3),
    ('Палата Неврології №2', 5, 3),
    ('Палата Неврології №3', 5, 3),
    ('Палата Неврології №4', 5, 3),
    ('Палата Неврології №5', 1, 3);


INSERT INTO doctors_examinations (end_time, start_time, doctor_id, examination_id, ward_id) VALUES
    ('10:00', '09:00', 1, 1, 1),
    ('12:00', '11:00', 2, 2, 2),
    ('14:00', '13:00', 3, 3, 3);