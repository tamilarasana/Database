-- Automatically increment by student_id

CREATE TABLE student(
    student_id  INT AUTO_INCREMENT,
    name VARCHAR(40),
    department VARCHAR(40),
    PRIMARY KEY(student_id)
);

INSERT INTO student VALUES('tamil','mca');
INSERT INTO student VALUES('sam','be');

            -- (or)
INSERT INTO student(name,department) VALUES ('tamil','mca');
INSERT  INTO student (name,department)  VALUES ('sam','be');




mysql> create table tamil2(id int auto_increment, name varchar(30), primary key(id));
Query OK, 0 rows affected (1.80 sec)

mysql> desc tamil2;
+-------+-------------+------+-----+---------+----------------+
| Field | Type        | Null | Key | Default | Extra          |
+-------+-------------+------+-----+---------+----------------+
| id    | int         | NO   | PRI | NULL    | auto_increment |
| name  | varchar(30) | YES  |     | NULL    |                |
+-------+-------------+------+-----+---------+----------------+
2 rows in set (0.15 sec)

mysql> insert into tamil2(name) values("shakthi");
Query OK, 1 row affected (0.26 sec)

mysql> desc tamil2;
+-------+-------------+------+-----+---------+----------------+
| Field | Type        | Null | Key | Default | Extra          |
+-------+-------------+------+-----+---------+----------------+
| id    | int         | NO   | PRI | NULL    | auto_increment |
| name  | varchar(30) | YES  |     | NULL    |                |
+-------+-------------+------+-----+---------+----------------+
2 rows in set (0.02 sec)

mysql> select * from tamil2
    -> select * from tamil2;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'select * from tamil2' at line 2
mysql> select * from tamil2;
+----+---------+
| id | name    |
+----+---------+
|  1 | shakthi |
+----+---------+
1 row in set (0.00 sec)

mysql> insert into tamil2(name) valuse("tamil");
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'valuse("tamil")' at line 1
mysql> insert into tamil2(name) values("tamil");
Query OK, 1 row affected (0.17 sec)

mysql> select * from tamil2;
+----+---------+
| id | name    |
+----+---------+
|  1 | shakthi |
|  2 | tamil   |
+----+---------+
2 rows in set (0.00 sec)
