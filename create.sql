
-- Cerating a New Table 


CREATE TABLE details(
    employee_id INT PRIMARY KEY,
    name VARCHAR(30),
    department VARCHAR(30)
);
 DESCRIBE details


 /*ubunto */

 mysql> show databases;
+--------------------+
| Database           |
+--------------------+
| information_schema |
| kloudone           |
| mysql              |
| performance_schema |
| sys                |
+--------------------+
5 rows in set (5.04 sec)

mysql> create databses mca;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'databses mca' at line 1
mysql> create database mca;
Query OK, 1 row affected (0.86 sec)

mysql> show databases;
+--------------------+
| Database           |
+--------------------+
| information_schema |
| kloudone           |
| mca                |
| mysql              |
| performance_schema |
| sys                |
+--------------------+
6 rows in set (0.01 sec)

mysql> use database mca;
ERROR 1049 (42000): Unknown database 'database'
mysql> use mca;
Database changed
mysql> show tables;
Empty set (0.00 sec)

mysql> create table details (id int,name varchar(30),age varchar(30));
Query OK, 0 rows affected (3.78 sec)



mysql> show databases;
+--------------------+
| Database           |
+--------------------+
| information_schema |
| kloudone           |
| mca                |
| mysql              |
| performance_schema |
| sys                |
+--------------------+
6 rows in set (0.03 sec)

mysql> use mca
Database changed
mysql> desc details;
+-------+-------------+------+-----+---------+-------+
| Field | Type        | Null | Key | Default | Extra |
+-------+-------------+------+-----+---------+-------+
| id    | int         | YES  |     | NULL    |       |
| name  | varchar(30) | YES  |     | NULL    |       |
| age   | varchar(30) | YES  |     | NULL    |       |
+-------+-------------+------+-----+---------+-------+
3 rows in set (0.01 sec)

mysql> insert into details values(1, "tamil",24);
Query OK, 1 row affected (0.58 sec)

mysql> select *from details;
+------+-------+------+
| id   | name  | age  |
+------+-------+------+
|    1 | tamil | 24   |
+------+-------+------+
1 row in set (0.00 sec)

