

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
3       ram             BSC */



mysql> create table details1(name varchar(30));
Query OK, 0 rows affected (1.77 sec)

mysql> desc details1;
+-------+-------------+------+-----+---------+-------+
| Field | Type        | Null | Key | Default | Extra |
+-------+-------------+------+-----+---------+-------+
| name  | varchar(30) | YES  |     | NULL    |       |
+-------+-------------+------+-----+---------+-------+
1 row in set (0.00 sec)

mysql> alter table details1 add phone varchar(30);
Query OK, 0 rows affected (0.77 sec)
Records: 0  Duplicates: 0  Warnings: 0

mysql> desc details1;
+-------+-------------+------+-----+---------+-------+
| Field | Type        | Null | Key | Default | Extra |
+-------+-------------+------+-----+---------+-------+
| name  | varchar(30) | YES  |     | NULL    |       |
| phone | varchar(30) | YES  |     | NULL    |       |
+-------+-------------+------+-----+---------+-------+
2 rows in set (0.00 sec)

mysql> alter table details add age varchar(30) after  name;
ERROR 1060 (42S21): Duplicate column name 'age'
mysql> alter table details1 add age varchar(30) after  name;
Query OK, 0 rows affected (2.27 sec)
Records: 0  Duplicates: 0  Warnings: 0

mysql> desc details1;
+-------+-------------+------+-----+---------+-------+
| Field | Type        | Null | Key | Default | Extra |
+-------+-------------+------+-----+---------+-------+
| name  | varchar(30) | YES  |     | NULL    |       |
| age   | varchar(30) | YES  |     | NULL    |       |
| phone | varchar(30) | YES  |     | NULL    |       |
+-------+-------------+------+-----+---------+-------+
3 rows in set (0.00 sec)

mysql> insert into details1 values("tamilarasan",23,987654321);
Query OK, 1 row affected (0.11 sec)

mysql> select * from details1
    -> select * from details1
    -> select * from details1;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'select * from details1
select * from details1' at line 2
mysql> select * from details1;
+-------------+------+-----------+
| name        | age  | phone     |
+-------------+------+-----------+
| tamilarasan | 23   | 987654321 |
+-------------+------+-----------+
1 row in set (0.00 sec)

mysql> alter table details1 add id int first;
Query OK, 0 rows affected (2.59 sec)
Records: 0  Duplicates: 0  Warnings: 0

mysql> select * from details1;
+------+-------------+------+-----------+
| id   | name        | age  | phone     |
+------+-------------+------+-----------+
| NULL | tamilarasan | 23   | 987654321 |
+------+-------------+------+-----------+
1 row in set (0.00 sec)

mysql> update details1  set id= 1 where age = 23;
Query OK, 1 row affected (0.23 sec)
Rows matched: 1  Changed: 1  Warnings: 0

mysql> select * from details1;
+------+-------------+------+-----------+
| id   | name        | age  | phone     |
+------+-------------+------+-----------+
|    1 | tamilarasan | 23   | 987654321 |
+------+-------------+------+-----------+
1 row in set (0.00 sec)

mysql> update details1  set age =24 where id  =1;
Query OK, 1 row affected (0.16 sec)
Rows matched: 1  Changed: 1  Warnings: 0

mysql> select * from details1;
+------+-------------+------+-----------+
| id   | name        | age  | phone     |
+------+-------------+------+-----------+
|    1 | tamilarasan | 24   | 987654321 |
+------+-------------+------+-----------+
1 row in set (0.00 sec)






