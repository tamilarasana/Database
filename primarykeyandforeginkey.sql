mysql> 
mysql> create table emp(name varchar(30), acc varchar(30), primary key (acc));
Query OK, 0 rows affected (0.60 sec)

mysql> desc emp;
+-------+-------------+------+-----+---------+-------+
| Field | Type        | Null | Key | Default | Extra |
+-------+-------------+------+-----+---------+-------+
| name  | varchar(30) | YES  |     | NULL    |       |
| acc   | varchar(30) | NO   | PRI | NULL    |       |
+-------+-------------+------+-----+---------+-------+
2 rows in set (0.00 sec)

mysql> insert into emp values("tamil",12345);
Query OK, 1 row affected (0.12 sec)

mysql> select * from emp;
+-------+-------+
| name  | acc   |
+-------+-------+
| tamil | 12345 |
+-------+-------+
1 row in set (0.00 sec)

mysql> insert into emp values("arasan",123456);
Query OK, 1 row affected (0.11 sec)

mysql> select * from emp;
+--------+--------+
| name   | acc    |
+--------+--------+
| tamil  | 12345  |
| arasan | 123456 |
+--------+--------+
2 rows in set (0.00 sec)

mysql> insert into emp values("raja",12345);
ERROR 1062 (23000): Duplicate entry '12345' for key 'emp.PRIMARY'
mysql> create table salary(acc varchar(30), januvary varchar(20), primary key (acc),  foreign key(acc) references emp(acc));
Query OK, 0 rows affected (0.62 sec)

mysql> select * from  salary;
Empty set (0.01 sec)

mysql> desc salary;
+----------+-------------+------+-----+---------+-------+
| Field    | Type        | Null | Key | Default | Extra |
+----------+-------------+------+-----+---------+-------+
| acc      | varchar(30) | NO   | PRI | NULL    |       |
| januvary | varchar(20) | YES  |     | NULL    |       |
+----------+-------------+------+-----+---------+-------+
2 rows in set (0.01 sec)

mysql> insert into  salary values values(12345,20000);
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'values(12345,20000)' at line 1
mysql> insert into  salary  values(12345,20000);
Query OK, 1 row affected (0.18 sec)

mysql> insert into  salary  values(123,20000);
ERROR 1452 (23000): Cannot add or update a child row: a foreign key constraint fails (`mca`.`salary`, CONSTRAINT `salary_ibfk_1` FOREIGN KEY (`acc`) REFERENCES `emp` (`acc`))
mysql> select * from salary;
+-------+----------+
| acc   | januvary |
+-------+----------+
| 12345 | 20000    |
+-------+----------+
1 row in set (0.00 sec)

mysql> create table employees(account varchar(30), amount varchar(30), primary key(account), foreign key(account) references emp(acc);
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near '' at line 1
mysql> create table employee(account varchar(30), amount varchar(30), primary key(account), foreign key(account) references emp(acc));
Query OK, 0 rows affected (0.55 sec)

mysql> desc empolyee;
ERROR 1146 (42S02): Table 'mca.empolyee' doesn't exist
mysql> desc empolyees;
ERROR 1146 (42S02): Table 'mca.empolyees' doesn't exist
mysql> desc employees;
ERROR 1146 (42S02): Table 'mca.employees' doesn't exist
mysql> desc employee;
+---------+-------------+------+-----+---------+-------+
| Field   | Type        | Null | Key | Default | Extra |
+---------+-------------+------+-----+---------+-------+
| account | varchar(30) | NO   | PRI | NULL    |       |
| amount  | varchar(30) | YES  |     | NULL    |       |
+---------+-------------+------+-----+---------+-------+
2 rows in set (0.00 sec)

mysql> insert into employee(123,10000);
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near '123,10000)' at line 1
mysql> insert into employee values(123,10000);
ERROR 1452 (23000): Cannot add or update a child row: a foreign key constraint fails (`mca`.`employee`, CONSTRAINT `employee_ibfk_1` FOREIGN KEY (`account`) REFERENCES `emp` (`acc`))
mysql> insert into employee values(12345,10000);
Query OK, 1 row affected (0.10 sec)

mysql> select * employee;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'employee' at line 1
mysql> select *from  employee;
+---------+--------+
| account | amount |
+---------+--------+
| 12345   | 10000  |
+---------+--------+
1 row in set (0.00 sec)

mysql> insert into employee values(12345,20000);
ERROR 1062 (23000): Duplicate entry '12345' for key 'employee.PRIMARY'
mysql> 

 