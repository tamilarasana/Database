-- basic operator
-- < , >, <=, >=,<>,AND, OR

SELECT * FROM student WHERE student_id < 3;

SELECT * FROM student WHERE student <= 3;

-- using  greaterthen

SELECT * FROM student WHERE student > 3;

SELECT * FROM student WHERE student >=3;

-- using  And  OR operator

SELECT * FROM student WHERE student student_id <=3 AND name ='tamil';

SELECT * FROM student WHERE student student_id <=3 OR name ='tamil';


-- not equalto

SELECT  *FROM student WHERE student  name <> 'tamil';

-- compare one columns different vaues

SELECT * FROM student   WHERE   name IN ('tamil','sam','ram');

SELECT * FROM student  WHERE department IN('mca','bsc','school') AND student_id >2;