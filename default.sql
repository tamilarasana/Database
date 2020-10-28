-- It can select a default values


CREATE TABLE student(
    student_id INT PRIMARY KEY,
    name VARCHAR (30),
    department VARCHAR (30) DEFAULT 'MCA'
);