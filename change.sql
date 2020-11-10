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
6 rows in set (0.02 sec)

mysql> use mca
Database changed
mysql> show  tables;
+---------------+
| Tables_in_mca |
+---------------+
| details       |
+---------------+
1 row in set (0.02 sec)

mysql> desc details
    -> desc details;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'desc details' at line 2
mysql> desc details;
+-------+-------------+------+-----+---------+-------+
| Field | Type        | Null | Key | Default | Extra |
+-------+-------------+------+-----+---------+-------+
| id    | int         | YES  |     | NULL    |       |
| name  | varchar(30) | YES  |     | NULL    |       |
| age   | varchar(30) | YES  |     | NULL    |       |
+-------+-------------+------+-----+---------+-------+
3 rows in set (0.01 sec)

mysql> alter table  details  add mob varchar(30);
Query OK, 0 rows affected (2.59 sec)
Records: 0  Duplicates: 0  Warnings: 0

mysql> select *from  details;
+------+-------+------+------+
| id   | name  | age  | mob  |
+------+-------+------+------+
|    1 | tamil | 24   | NULL |
+------+-------+------+------+
1 row in set (0.00 sec)

mysql> alter table details change mob mobile varchar(30);
Query OK, 0 rows affected (0.21 sec)
Records: 0  Duplicates: 0  Warnings: 0

mysql> select *from  details;
+------+-------+------+--------+
| id   | name  | age  | mobile |
+------+-------+------+--------+
|    1 | tamil | 24   | NULL   |
+------+-------+------+--------+
1 row in set (0.00 sec)

mysql> desc details;
+--------+-------------+------+-----+---------+-------+
| Field  | Type        | Null | Key | Default | Extra |
+--------+-------------+------+-----+---------+-------+
| id     | int         | YES  |     | NULL    |       |
| name   | varchar(30) | YES  |     | NULL    |       |
| age    | varchar(30) | YES  |     | NULL    |       |
| mobile | varchar(30) | YES  |     | NULL    |       |
+--------+-------------+------+-----+---------+-------+
4 rows in set (0.03 sec)

mysql> alter table details modify mobile int(12);
Query OK, 1 row affected, 1 warning (3.00 sec)
Records: 1  Duplicates: 0  Warnings: 1

mysql> desc details;
+--------+-------------+------+-----+---------+-------+
| Field  | Type        | Null | Key | Default | Extra |
+--------+-------------+------+-----+---------+-------+
| id     | int         | YES  |     | NULL    |       |
| name   | varchar(30) | YES  |     | NULL    |       |
| age    | varchar(30) | YES  |     | NULL    |       |
| mobile | int         | YES  |     | NULL    |       |
+--------+-------------+------+-----+---------+-------+
4 rows in set (0.01 sec)

mysql> drop table details;

