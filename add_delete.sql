-- Add the column in the table

ALTER TABLE student ADD  city  VARCHAR(30);


-- Delete the  column  in the table

ALTER TABLE student DROP COLUMN city;

-- Delete the  table
-- drop table table name

DROP TABLE  student;