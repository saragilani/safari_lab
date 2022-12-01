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
    capacity INT
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