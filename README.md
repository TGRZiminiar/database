## Start only some service
docker compose up -d db


## Command to execute container mysql
```

docker exec -it (service name) mysql -u (user name) -p


docker exec -it db mysql -u root -p
123

```

## Show Database 
```
SHOW DATABASES;
```


DROP DATABASE IF EXISTS conference;

CREATE DATABASE conference
DEFAULT CHARACTER SET utf8
DEFAULT COLLATE utf8_general_ci;


USE conference;


CREATE TABLE IF NOT EXISTS `tb_account` (
    `_id` int(11) NOT NULL AUTO_INCREMENT,
    `email` text NOT NULL,
    `password` text NOT NULL,
    `code` text NOT NULL,
    `title_name` text NOT NULL,
    `first_name` text NOT NULL,
    `middle_name` text,
    `last_name` text NOT NULL,
    `address` text,
    `city` text,
    `postal_code` text,
    `country` text NOT NULL,
    PRIMARY KEY (`_id`)
);

DESCRIBE tb_account;


ALTER TABLE tb_account 
CHANGE _id account_id int(11);

DESCRIBE tb_account;


## To set default value timestamp 0000-00-00 00:00:00
SELECT @@GLOBAL.sql_mode global, @@SESSION.sql_mode session;

SELECT @@GLOBAL.sql_mode;

SET sql_mode = 'ONLY_FULL_GROUP_BY,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';
SET GLOBAL sql_mode = 'ONLY_FULL_GROUP_BY,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';


CREATE TABLE IF NOT EXISTS `tb_paper` (
    `_id` int(11) NOT NULL,
    `account_id` int(11) NOT NULL,
    `created` timestamp DEFAULT CURRENT_TIMESTAMP,
    `modified` timestamp DEFAULT '0000-00-00 00:00:00',
    `category` int(11) NOT NULL,
    `title` text NOT NULL,
    `author` text NOT NULL,
    `present` int(11) NOT NULL,
    `correspond` int(11) NOT NULL,
    `emailcorr` text NOT NULL,
    `abstract` text NOT NULL,
    `status` int(11) NOT NULL,
    PRIMARY KEY (`_id`)
);

ALTER TABLE tb_paper
modify _id int(11) NOT NULL;

ALTER TABLE tb_paper 
CHANGE _id paper_id int(11);

ALTER TABLE tb_paper ADD PRIMARY KEY (account_id);

8.
![alt text](image.png)

select OBJECT_NAME(OBJECT_ID) AS NameofConstraint
FROM sys.objects
where OBJECT_NAME(parent_object_id)='tb_paper'
and type_desc LIKE '%CONSTRAINT'

alter table Persion drop CONSTRAINT <constraint_name>
ALTER TABLE `tb_paper` DROP PRIMARY KEY;
ALTER TABLE `tb_paper` ADD PRIMARY KEY (`account_id`, `_id`);
ALTER TABLE `tb_paper` ADD PRIMARY KEY ( SkillID, SkillName );


ALTER TABLE tb_paper DROP PRIMARY KEY, ADD PRIMARY KEY(paper_id, account_id);

SHOW COLUMNS from tb_paper;

ALTER TABLE table_name DROP COLUMN column_name;


13. Delete modified , present , and correspond . Show your command and captured screen of the table after deleting
columns.
Example statement:

ALTER TABLE tb_paper
DROP COLUMN modified,
DROP COLUMN present,
DROP COLUMN correspond;
DESC tb_paper;

14. Change the data type of status from int(11) to Boolean . Show your command and captured screen. Note that the
status column is used for storing either 0 (False) or 1 (True).
Example statement:
ALTER TABLE tb_paper MODIFY status Boolean NOT NULL;

16. Execute following statement. Show your result. What is the command used for?
ALTER TABLE tb_paper ADD comment VARCHAR(60) AFTER abstract;

17. Create a table named tb_category with two attributes; category_id and category . The primary key is category_id
and its data type is int(11) with AUTO_INCREMENT . And the data type of category is TEXT . Show your CREATE
statement.

CREATE TABLE IF NOT EXISTS `tb_category` (
    `category_id` int(11) AUTO_INCREMENT,
    `category` text,
    PRIMARY KEY (`category_id`)
);

18. Add the list of categories as shown in the figure below into tb_category using an INSERT statement. Show your
command.

INSERT INTO tb_category (category)
VALUES ('Chemistry'),
       ('Biology'),
       ('Physics'),
       ('Mathematics'),
       ('Computing and Information Technology');

SELECT * FROM tb_category;

DELETE FROM tb_category;

20. Add a foreign key constraint on the category column of tb_paper table which points to the category_id column of
the tb_category table by using ALTER TABLE statement.

ALTER TABLE tb_paper ADD FOREIGN KEY
(category) REFERENCES
tb_category(category_id);

21. Add a foreign key constraint on the account_id column of tb_paper table which points to the account_id
column of tb_account table. Show your statement and captured result.
SELECT COLUMN_

ALTER TABLE tb_paper ADD FOREIGN KEY
(account_id) REFERENCES
tb_account(account_id);


22. Execute statement below. Show your result. What is it used for? What is the constraint name of the foreign
key of tb_paper table?

For a Table:

SELECT COLUMN_NAME, CONSTRAINT_NAME, REFERENCED_COLUMN_NAME, REFERENCED_TABLE_NAME
FROM information_schema.KEY_COLUMN_USAGE
WHERE TABLE_NAME = 'tb_paper';

For a Column:
SELECT 
  TABLE_NAME,COLUMN_NAME,CONSTRAINT_NAME, REFERENCED_TABLE_NAME,REFERENCED_COLUMN_NAME
FROM
  INFORMATION_SCHEMA.KEY_COLUMN_USAGE
WHERE
  REFERENCED_TABLE_SCHEMA = (SELECT DATABASE()) AND
  REFERENCED_TABLE_NAME = '<table>' AND
  REFERENCED_COLUMN_NAME = '<column>' \G


23. Use the following statement. Note that your have to replace constraint_name with the actual constraint name of the foreign
key of tb_paper table found in Step 22. Show your result.
ALTER TABLE tb_paper
DROP FOREIGN KEY tb_paper_ibfk_2,
ADD CONSTRAINT `fk_account_id` FOREIGN KEY (`account_id`) REFERENCES `tb_account`(`account_id`);

24. Then, repeat the same statement in Step 22 again. Do you see any changes? What is it? What is the statement in Step 23
used for?
ALTER TABLE tb_paper
DROP FOREIGN KEY tb_paper_ibfk_2,
ADD CONSTRAINT `fk_account_id` FOREIGN KEY (`account_id`) REFERENCES `tb_account` (`account_id`);

25. Insert any dummy data into the tables tb_account and tb_paper by using INSERT statement.
INSERT INTO tb_account (
    account_id,
    email,
    password,
    code,
    title_name,
    first_name,
    middle_name,
    last_name,
    address,
    city,
    postal_code,
    country
)
VALUES (
    1,
    "mix@gmail.com",
    "123",
    "456",
    "this is title",
    "chitsanupong",
    "mix",
    "jateassavapirom",
    "99/73 Pathumthani",
    "Pathumthani",
    "12130",
    "Thailand"
),(
    2,
    "mix123@gmail.com",
    "123123",
    "456456",
    "this is title2",
    "chitsanupong2",
    "mix2",
    "jateassavapirom2",
    "99/73 Pathumthani2",
    "Pathumthani2",
    "121302",
    "Thailand2"
);

INSERT INTO tb_paper (
    paper_id,
    account_id,
    category,
    title,
    author,
    emailcorr,
    abstract,
    comment,
    status
)
VALUES (
    1,
    1,
    1,
    "this is title",
    "chitsanupong",
    "mix@gmail.com",
    "this is abstract",
    "this is comment",
    1
);