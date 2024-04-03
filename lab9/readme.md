docker exec -it lab9-db-1 mysql -u root -p
123

DROP DATABASE IF EXISTS my_db;

CREATE DATABASE my_db
DEFAULT CHARACTER SET utf8
DEFAULT COLLATE utf8_general_ci;

USE my_db;

CREATE TABLE IF NOT EXISTS tb_persons (
student_id char(10) NOT NULL,
first_name varchar(50) NOT NULL,
last_name varchar(50) NOT NULL,
age int NOT NULL,
PRIMARY KEY (student_id)
);


docker-php-ext-install mysqli
