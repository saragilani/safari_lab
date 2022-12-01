DROP TABLE assignments;
DROP TABLE animals;
DROP TABLE enclosures;
DROP TABLE staff;

CREATE TABLE staff (
    staff_id SERIAL PRIMARY KEY,
    name VARCHAR(255),
    employee_Number INT
);

CREATE TABLE enclosures (
    enclosure_id SERIAL PRIMARY KEY,
    name VARCHAR(255),
    capacity INT,
    closedForMaintenance VARCHAR(255)
);

CREATE TABLE animals (
    animal_id SERIAL PRIMARY KEY,
    name VARCHAR(255),
    type VARCHAR(255),
    age INT,
    enclosure_id INT REFERENCES enclosures(enclosure_id)
);

CREATE TABLE assignments (
    assignment_id SERIAL PRIMARY KEY,
    employee_id INT REFERENCES staff(staff_id),
    enclosure_id INT REFERENCES enclosures(enclosure_id)

);

-- Staff 

Insert INTO staff (name, employee_Number) VALUES ('Salma', 21);
Insert INTO staff (name, employee_Number) VALUES ('Sara', 25);

-- Enclosures
Insert INTO enclosures (name, capacity) VALUES ('Reptile', 60);
Insert INTO enclosures (name, capacity) VALUES ('Big Cats', 25);
Insert INTO enclosures (name, capacity) VALUES ('Birds', 70);
Insert INTO enclosures (name, capacity) VALUES ('Primates', 30);

-- Insert Animals 
Insert INTO animals (name, type, age, enclosure_id ) VALUES ('Slytherine', 'Boa', 21, 1);
Insert INTO animals (name, type, age, enclosure_id ) VALUES ('Sid', 'Cobra', 7, 1);
Insert INTO animals (name, type, age, enclosure_id ) VALUES ('Simba', 'Lion', 15, 2);
Insert INTO animals (name, type, age, enclosure_id ) VALUES ('Ben', 'Parrot', 11, 3);
Insert INTO animals (name, type, age, enclosure_id ) VALUES ('George', 'Gorrila', 30, 4);
Insert INTO animals (name, type, age, enclosure_id ) VALUES ('Rafiki', 'Orangutan', 70, 4);
Insert INTO animals (name, type, age, enclosure_id ) VALUES ('Richard Parker' , 'Tiger', 50, 4);
Insert INTO animals (name, type, age, enclosure_id ) VALUES ('Pink', 'Panther', 30, 4);
Insert INTO animals (name, type, age, enclosure_id ) VALUES ('Headwig', 'Owl', 80, 4);
Insert INTO animals (name, type, age, enclosure_id ) VALUES ('Ollie', 'Ostritch', 32, 4);

-- Assignments 
Insert INTO assignments (employee_id, enclosure_id ) VALUES (1,1);
Insert INTO assignments (employee_id, enclosure_id ) VALUES (1,2);
Insert INTO assignments (employee_id, enclosure_id ) VALUES (2,3);
Insert INTO assignments (employee_id, enclosure_id ) VALUES (2,4);

