-- MVP
-- 1.
SELECT name FROM animals WHERE enclosure_id = 2;
-- 2.
SELECT staff.name FROM staff INNER JOIN assignments ON staff.staff_id = assignments.employee_id WHERE assignments.enclosure_id = 4;

--- EXTENSION
-- 1.
SELECT staff.name, enclosures.name FROM staff 
INNER JOIN assignments ON staff_id = employee_id 
INNER JOIN enclosures ON enclosures.enclosure_id = assignments.enclosure_id WHERE closedForMaintenance = 'T';
-- 2.
SELECT enclosures.name FROM animals INNER JOIN enclosures ON enclosures.enclosure_id = animals.enclosure_id ORDER BY animals.age DESC LIMIT 1;

-- 3.
SELECT Count(a.type) FROM animals AS a
INNER JOIN assignments ON a.enclosure_id = assignments.enclosure_id 
INNER JOIN staff ON staff.staff_id = assignments.employee_id WHERE staff.name = 'Salma';

-- 4.
SELECT COUNT(staff)
 FROM enclosures AS e
INNER JOIN assignments ON e.enclosure_id = assignments.enclosure_id 
INNER JOIN staff ON staff.staff_id = assignments.employee_id WHERE e.name = 'Primates';

-- 5.
SELECT a.name
 FROM animals AS a
INNER JOIN enclosures AS e ON e.enclosure_id = a.enclosure_id  WHERE e.name = 'Big Cats';