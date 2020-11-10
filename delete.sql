-- drop : it is used to delete the dalbe cannot retive the data;

-- truncate  it is used to delete the tabe all datas 
-- 			it delete onlyfor table datas cannaot delete table  and can't retie the data

-- delete  it is used to  to delete the data for one by one 
-- 		it also used for the retrive the data 

-- 		also delete the table



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



mysql> show tables;
+---------------+
| Tables_in_mca |
+---------------+
| details       |
| details1      |
| emp           |
| employee      |
| salary        |
| tamil         |
| tamil2        |
| tamil4        |
| tamil5        |
+---------------+
9 rows in set (0.03 sec)

mysql> desc details;
+--------+-------------+------+-----+---------+-------+
| Field  | Type        | Null | Key | Default | Extra |
+--------+-------------+------+-----+---------+-------+
| id     | int         | YES  |     | NULL    |       |
| name   | varchar(30) | YES  |     | NULL    |       |
| age    | varchar(30) | YES  |     | NULL    |       |
| mobile | int         | YES  |     | NULL    |       |
+--------+-------------+------+-----+---------+-------+
4 rows in set (0.00 sec)

mysql> select * from details;
+------+-------+------+--------+
| id   | name  | age  | mobile |
+------+-------+------+--------+
|    1 | tamil | 24   |   NULL |
+------+-------+------+--------+
1 row in set (0.08 sec)

mysql> select * from tamil;
+------+------+------+
| name | age  | mob  |
+------+------+------+
| tami | NULL | NULL |
+------+------+------+
1 row in set (0.00 sec)

mysql> select * from tamil2;
+----+---------+
| id | name    |
+----+---------+
|  1 | shakthi |
|  2 | tamil   |
+----+---------+
2 rows in set (0.02 sec)

mysql> delete from tamil2 where id = 2;
Query OK, 1 row affected (0.12 sec)

mysql> select * from tamil2;
+----+---------+
| id | name    |
+----+---------+
|  1 | shakthi |
+----+---------+
1 row in set (0.01 sec)

mysql> truncate table tamil2;
Query OK, 0 rows affected (1.27 sec)

mysql> select * from tamil2;
Empty set (0.00 sec)

mysql> desc tamil2;
+-------+-------------+------+-----+---------+----------------+
| Field | Type        | Null | Key | Default | Extra          |
+-------+-------------+------+-----+---------+----------------+
| id    | int         | NO   | PRI | NULL    | auto_increment |
| name  | varchar(30) | YES  |     | NULL    |                |
+-------+-------------+------+-----+---------+----------------+
2 rows in set (0.00 sec)

mysql> drop table tamil2;
Query OK, 0 rows affected (0.86 sec)

mysql> delete from details1;
Query OK, 1 row affected (0.14 sec)

mysql> 
