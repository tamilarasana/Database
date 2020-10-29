-- Delete the all fields like  all column and rows

-- delete the everything  in the table

SELECT  FROM student ;


-- delete the any particular data using id 

SELECT FROM student
    WHERE student_id = 3;

            -- output
/*id    name            department
1       tamilarasan     MSC
2       sam             BE
3       ram             BSC */  /*=> delete the row*/


-- delete the name and department

SELECT FROM student 
    WHERE name = 'SAM'  AND department ='BE';



