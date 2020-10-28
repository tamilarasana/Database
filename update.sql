

-- update the all datas

UPDATE student SET department = 'school'

-- output
/*id  name  department
1   tamil   school
2   sam     school
3   ram     school*/

-- update the particular datas

UPDATE student SET department = 'school'
        WHERE department ='mca'

-- output
/*id  name  department
1   tamil   school
2   sam     BE
3   ram     BSC*/


-- Update the data based on the id

UPDATE student SET department = "ME"
    WHERE student_id = 2;


    -- output
/*id  name  department
1   tamil   school
2   sam     ME
3   ram     BSC*/


-- Update the particular combination of data

UPDATE student  SET department = 'School'
    WHERE department = 'MCA' OR department = 'BSC';


    -- output
/*id  name  department
1   tamil   school
2   sam     BE
3   ram     school*/


-- Update the only one particular  data on the row

UPDATE student SET name = 'Tamilarasan', department = 'MSC'
    WHERE student_id = 1;

        -- output
/*id    name            department
1       tamilarasan     MSC
2       sam             BE
3       ram             BSC*/

