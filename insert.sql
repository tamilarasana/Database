-- Insert data into the table

INSERT  INTO student VALUES(1,'TAMIL','mca');
INSERT  INTO student VALUES(2, 'SAM','BE');
INSERT INTO   student VALUES(3, 'RAM', 'BSC');

                    (or)
                    
INSERT INTO student(student_id, name, department)VALUES(1,'TAMIL','MCA');
INSERT INTO student(student_id, name, department)VALUES(2,'SAM','BE');
INSERT INTO student(student_id, name, department)VALUES(3,'RAM','BSC');

-- View the Table

SELECT * FROM student;