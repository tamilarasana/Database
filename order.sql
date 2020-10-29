-- disply the table 
SELECT * FROM student;


-- display  the name field only

SELECT name FROM student;

-- output

-- name
-- tamil
-- ram
-- sam

-- display  the department   field only

SELECT department FROM student;

-- output

-- department
--   MCA
--   BE
--   BSC

-- Ascending and Descending order

SELECT name,department FROM student ORDER BY name;

            -- (OR)
SELECT student.name  FROM student.department  ORDER  BY name;


-- using id 

SELECT * FROM student ORDER BY  student_id ;

SELECT * FROM student ORDER BY  name DESC; -- Descending order
SELECT * FROM student ORDER BY  name ASC;   --Ascending order


-- Ascending and Descending order using id 

SELECT *  FROM  student ORDER BY student_id DESC;
SELECT *  FROM  student ORDER By student _id ASC;

-- Set the Limit

SELECT * FROM student ORDER BY  student_id DESC LIMIT 2;
            -- (OR)
SELECT * FROM student   ORDER BY name  DESC LIMIT 2;
            -- (OR)
SELECT * FROM student   ORDER BY department ASC 3;


