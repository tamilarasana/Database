-- fillter the data in table

SELECT * FROM student WHERE name = 'tamil';

--displaying the nema only

SELECT * FROM student WHERE department  = 'mca';


--select the same data for dferent fields 

SELECT name , department FROM student WHERE ='MCA';

SELECT name , department FROM student WHERE name ='tamil' OR department  = 'BE';


