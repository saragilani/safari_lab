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

-- 3.
SELECT Count(a.type) FROM animals AS a INNER JOIN enclosures AS e ON e.enclosure_id = a.enclosure_id 
INNER JOIN assignments ON e.enclosure_id = assignments.enclosure_id 
INNER JOIN staff ON staff.staff_id = assignments.employee_id WHERE staff.name = 'Salma';