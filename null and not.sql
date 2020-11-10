mysql> create table tamil(name varchar(20));
Query OK, 0 rows affected (1.50 sec)

mysql> insert into tamil value("tami");
Query OK, 1 row affected (0.24 sec)

mysql> select name from tami
    -> select name from tami;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'select name from tami' at line 2
mysql> select name from tami;

ERROR 1146 (42S02): Table 'mca.tami' doesn't exist

mysql> select * from tamil;
+------+
| name |
+------+
| tami |
+------+
1 row in set (0.00 sec)

mysql> select name  from tamil;
+------+
| name |
+------+
| tami |
+------+
1 row in set (0.00 sec)

mysql> alter table tamil add  age varchar(20);
Query OK, 0 rows affected (0.70 sec)
Records: 0  Duplicates: 0  Warnings: 0

mysql> select  * from tamil;
+------+------+
| name | age  |
+------+------+
| tami | NULL |
+------+------+
1 row in set (0.00 sec)

mysql> update tamil set name = "sam" where age = NULL;
Query OK, 0 rows affected (0.02 sec)
Rows matched: 0  Changed: 0  Warnings: 0

mysql> select  * from tamil;
+------+------+
| name | age  |
+------+------+
| tami | NULL |
+------+------+
1 row in set (0.00 sec)

mysql> alter table tamil modify age varchar(30) not null;
ERROR 1138 (22004): Invalid use of NULL value
mysql> alter table tamil modify age varchar(20) not null;
ERROR 1138 (22004): Invalid use of NULL value
mysql> alter table tamil modify age varchar(20) NOT  NULL;
ERROR 1138 (22004): Invalid use of NULL value
mysql> alter table tamil modify age varchar(20) not null;
ERROR 1138 (22004): Invalid use of NULL value
mysql> alter table tamil modify age varchar(20) not null;
ERROR 1138 (22004): Invalid use of NULL value
mysql> desc tamil;
+-------+-------------+------+-----+---------+-------+
| Field | Type        | Null | Key | Default | Extra |
+-------+-------------+------+-----+---------+-------+
| name  | varchar(20) | YES  |     | NULL    |       |
| age   | varchar(20) | YES  |     | NULL    |       |
+-------+-------------+------+-----+---------+-------+
2 rows in set (0.00 sec)

mysql> alter table modify age varchar(20) not null;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'age varchar(20) not null' at line 1
mysql> alter table tamil modify age varchar(20) not null;
ERROR 1138 (22004): Invalid use of NULL value
mysql> update tamil set name = "sam" where age = "";
Query OK, 0 rows affected (0.00 sec)
Rows matched: 0  Changed: 0  Warnings: 0

mysql> select * from tamil;
+------+------+
| name | age  |
+------+------+
| tami | NULL |
+------+------+
1 row in set (0.00 sec)

mysql> alter table tamil add  mob varchar(20);
Query OK, 0 rows affected (1.09 sec)
Records: 0  Duplicates: 0  Warnings: 0

mysql> select * from tamil;
+------+------+------+
| name | age  | mob  |
+------+------+------+
| tami | NULL | NULL |
+------+------+------+
1 row in set (0.00 sec)



^C
mysql> update tamil set age =25 where  name  is null;
Query OK, 0 rows affected (0.30 sec)
Rows matched: 0  Changed: 0  Warnings: 0

mysql> select s
    -> 

^C
mysql> select *from tamil;
+------+------+------+
| name | age  | mob  |
+------+------+------+
| tami | NULL | NULL |
+------+------+------+
1 row in set (0.02 sec)
