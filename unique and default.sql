mysql> create table tamil3(mobile varchr(30) unique, team varchar(30) defaut "csk");
create table tamil3(mobile varchr(30) unique, team varchar(30) defaut "csk");
^C
mysql> create able tamil3(mobile varchar(30) unique, team varchar(30) default "csk");
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'able tamil3(mobile varchar(30) unique, team varchar(30) default "csk")' at line 1
mysql> create table tamil3(mobile varchar(30) unique, team varchar(30) default "csk");
Query OK, 0 rows affected (2.05 sec)

mysql> desc tamil3;
+--------+-------------+------+-----+---------+-------+
| Field  | Type        | Null | Key | Default | Extra |
+--------+-------------+------+-----+---------+-------+
| mobile | varchar(30) | YES  | UNI | NULL    |       |
| team   | varchar(30) | YES  |     | csk     |       |
+--------+-------------+------+-----+---------+-------+
2 rows in set (0.01 sec)

mysql> insertinto tamil3(mobile) values(9876543210);
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'insertinto tamil3(mobile) values(9876543210)' at line 1
mysql> insert into tamil3(mobile) values(9876543210);
Query OK, 1 row affected (0.13 sec)

mysql> select *from tamil3;
+------------+------+
| mobile     | team |
+------------+------+
| 9876543210 | csk  |
+------------+------+
1 row in set (0.00 sec)

mysql> insert into tamil3(mobile) values(9876543210);
ERROR 1062 (23000): Duplicate entry '9876543210' for key 'tamil3.mobile'
mysql> insert into tamil3(mobile) values(987654321);
Query OK, 1 row affected (0.14 sec)

mysql> select *from tamil3;
+------------+------+
| mobile     | team |
+------------+------+
| 9876543210 | csk  |
| 987654321  | csk  |
+------------+------+
2 rows in set (0.00 sec)

	