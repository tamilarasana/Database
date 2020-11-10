mysql> 
mysql> create table account(id int, name varchar(30),salary1 varchar(30),salary2 varchar(30), city varchar(30));
Query OK, 0 rows affected (1.26 sec)

mysql> desc account;
+---------+-------------+------+-----+---------+-------+
| Field   | Type        | Null | Key | Default | Extra |
+---------+-------------+------+-----+---------+-------+
| id      | int         | YES  |     | NULL    |       |
| name    | varchar(30) | YES  |     | NULL    |       |
| salary1 | varchar(30) | YES  |     | NULL    |       |
| salary2 | varchar(30) | YES  |     | NULL    |       |
| city    | varchar(30) | YES  |     | NULL    |       |
+---------+-------------+------+-----+---------+-------+
5 rows in set (0.00 sec)

mysql> insert into account values(1,"tamil",1000,2000,"hosur");
Query OK, 1 row affected (0.12 sec)

mysql> insert into account values(2,"sam",2000,3000,"osur");
Query OK, 1 row affected (0.12 sec)

mysql> insert into account values(3,"ram", 1000,2000,"ooty");
Query OK, 1 row affected (0.15 sec)

mysql> insert into account values(4,"ravi", 2000,4000,"chennai");
Query OK, 1 row affected (0.16 sec)

mysql> insert into account values(5,"ravi", 3000,1000,"krishnagiri");
Query OK, 1 row affected (0.13 sec)

mysql> select * from account;
+------+-------+---------+---------+-------------+
| id   | name  | salary1 | salary2 | city        |
+------+-------+---------+---------+-------------+
|    1 | tamil | 1000    | 2000    | hosur       |
|    2 | sam   | 2000    | 3000    | osur        |
|    3 | ram   | 1000    | 2000    | ooty        |
|    4 | ravi  | 2000    | 4000    | chennai     |
|    5 | ravi  | 3000    | 1000    | krishnagiri |
+------+-------+---------+---------+-------------+
5 rows in set (0.00 sec)

mysql> update account set name = muthu where id = 5;
ERROR 1054 (42S22): Unknown column 'muthu' in 'field list'
mysql> update account set name = "muthu" where id = 5;
Query OK, 1 row affected (0.23 sec)
Rows matched: 1  Changed: 1  Warnings: 0

mysql> select * from account;
+------+-------+---------+---------+-------------+
| id   | name  | salary1 | salary2 | city        |
+------+-------+---------+---------+-------------+
|    1 | tamil | 1000    | 2000    | hosur       |
|    2 | sam   | 2000    | 3000    | osur        |
|    3 | ram   | 1000    | 2000    | ooty        |
|    4 | ravi  | 2000    | 4000    | chennai     |
|    5 | muthu | 3000    | 1000    | krishnagiri |
+------+-------+---------+---------+-------------+
5 rows in set (0.00 sec)

mysql> select * from account where salary1 =1000 and salary2= 2000;
+------+-------+---------+---------+-------+
| id   | name  | salary1 | salary2 | city  |
+------+-------+---------+---------+-------+
|    1 | tamil | 1000    | 2000    | hosur |
|    3 | ram   | 1000    | 2000    | ooty  |
+------+-------+---------+---------+-------+
2 rows in set (0.06 sec)

mysql> select * from account where salary1 =1000 and salary2= 3000;
Empty set (0.00 sec)

mysql> select * from account where salary1 =2000 and salary2= 3000;
+------+------+---------+---------+------+
| id   | name | salary1 | salary2 | city |
+------+------+---------+---------+------+
|    2 | sam  | 2000    | 3000    | osur |
+------+------+---------+---------+------+
1 row in set (0.00 sec)

mysql> select * from account where salary1 =1000 or salary2= 3000;
+------+-------+---------+---------+-------+
| id   | name  | salary1 | salary2 | city  |
+------+-------+---------+---------+-------+
|    1 | tamil | 1000    | 2000    | hosur |
|    2 | sam   | 2000    | 3000    | osur  |
|    3 | ram   | 1000    | 2000    | ooty  |
+------+-------+---------+---------+-------+
3 rows in set (0.00 sec)

mysql> select * from account where nor salary1=1000;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'salary1=1000' at line 1
mysql> select * from account where not salary1=1000;
+------+-------+---------+---------+-------------+
| id   | name  | salary1 | salary2 | city        |
+------+-------+---------+---------+-------------+
|    2 | sam   | 2000    | 3000    | osur        |
|    4 | ravi  | 2000    | 4000    | chennai     |
|    5 | muthu | 3000    | 1000    | krishnagiri |
+------+-------+---------+---------+-------------+
3 rows in set (0.03 sec)

mysql> select * from account ;
+------+-------+---------+---------+-------------+
| id   | name  | salary1 | salary2 | city        |
+------+-------+---------+---------+-------------+
|    1 | tamil | 1000    | 2000    | hosur       |
|    2 | sam   | 2000    | 3000    | osur        |
|    3 | ram   | 1000    | 2000    | ooty        |
|    4 | ravi  | 2000    | 4000    | chennai     |
|    5 | muthu | 3000    | 1000    | krishnagiri |
+------+-------+---------+---------+-------------+
5 rows in set (0.00 sec)

mysql> select * from account where not salary2=2000;
+------+-------+---------+---------+-------------+
| id   | name  | salary1 | salary2 | city        |
+------+-------+---------+---------+-------------+
|    2 | sam   | 2000    | 3000    | osur        |
|    4 | ravi  | 2000    | 4000    | chennai     |
|    5 | muthu | 3000    | 1000    | krishnagiri |
+------+-------+---------+---------+-------------+
3 rows in set (0.01 sec)

