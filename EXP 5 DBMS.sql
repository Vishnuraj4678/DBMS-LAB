mysql> create database db;
ERROR 1007 (HY000): Can't create database 'db'; database exists
mysql> use db;
Database changed
mysql> create table ben(id ,name VARCHAR(30),salary int);
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near ',name VARCHAR(30),salary int)' at line 1
mysql> create table ben(id int ,name VARCHAR(30),salary int);
Query OK, 0 rows affected (0.02 sec)

mysql> insert into ben values(01, 'kutty aswin',5000);
Query OK, 1 row affected (0.01 sec)

mysql> insert into ben values(01, 'mr aswin',6000);
Query OK, 1 row affected (0.00 sec)

mysql> insert into ben values(01, 'pig man',4500);
Query OK, 1 row affected (0.00 sec)

mysql> SELECT*FROM ben;
+------+-------------+--------+
| id   | name        | salary |
+------+-------------+--------+
|    1 | kutty aswin |   5000 |
|    1 | mr aswin    |   6000 |
|    1 | pig man     |   4500 |
+------+-------------+--------+
3 rows in set (0.00 sec)

mysql> CREATE PROCEDURE SumProcedure(IN a INT,IN b INT)
    -> BEGIN
    ->   DECLAREc INT;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'INT' at line 3
mysql> DELIMITER//
    -> CREATE PROCEDURE SumProcedure(IN a INT,IN b INT)
    -> BEGIN
    ->   DECLARE c INT;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'DELIMITER//CREATE PROCEDURE SumProcedure(IN a INT,IN b INT)
BEGIN
  DECLARE c IN' at line 1
mysql> DELIMITER//
    -> CREATE PROCEDURE SumProcedure(IN a INT,IN b INT)
    -> BEGIN
    ->   DECLARE C INT;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'DELIMITER//CREATE PROCEDURE SumProcedure(IN a INT,IN b INT)
BEGIN
  DECLARE C IN' at line 1
mysql> DELIMITER//
    -> CREATE PROCEDURE SumProcedure(IN a INT,IN b INT)
    -> BEGIN
    -> DECLARE c INT;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'DELIMITER//CREATE PROCEDURE SumProcedure(IN a INT,IN b INT)
BEGIN
DECLARE c INT' at line 1
mysql> DELIMITER//
    -> CREATE PROCEDURE SumProcedure(IN a INT,IN b INT)
    -> BEGIN
    -> DECLARE c INT;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'DELIMITER//CREATE PROCEDURE SumProcedure(IN a INT,IN b INT)
BEGIN
DECLARE c INT' at line 1
mysql> DELIMITER //
mysql> CREATE PROCEDURE SumProcedure(IN a INT,IN b INT)
    -> BEGIN
    -> DECLARE c INT;
    -> SET c=a+b;
    -> SELECT CONCAT('Sum of two numbers=',c)AS Result;
    -> END //
Query OK, 0 rows affected (0.02 sec)

mysql> CALL SumProcedure(10,20);
    -> //
+-----------------------+
| Result                |
+-----------------------+
| Sum of two numbers=30 |
+-----------------------+
1 row in set (0.00 sec)

Query OK, 0 rows affected (0.00 sec)

mysql> DELIMITER //
mysql> CREATE PROCEDURE SumProcedure(a INT,b INT)
    -> BEGIN
    -> V
    -> HJB
    -> BVBV
    -> VCH
    -> //
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax 
