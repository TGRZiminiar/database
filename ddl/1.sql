show DATABASES;

use conference;

show tables;

CREATE TABLE IF NOT EXISTS tb_account (
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

ALTER TABLE tb_account CHANGE _id account_id int(11);

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

desc tb_paper;

ALTER TABLE tb_paper CHANGE _id paper_id int(11);

desc tb_paper;

-- 9. Add account_id as another primary key by using an ALTER TABLE statement. What is the result? and why?
-- For example, ALTER TABLE statement for adding a primary key is
ALTER TABLE tb_paper DROP PRIMARY KEY, ADD PRIMARY KEY (account_id);

ALTER TABLE tb_paper DROP PRIMARY KEY, ADD PRIMARY KEY (account_id, paper_id);

-- 13. Delete modified , present , and correspond . Show your command and captured screen of the table after deleting
-- columns.

ALTER TABLE tb_paper DROP COLUMN modified, DROP COLUMN present, DROP COLUMN correspond;

ALTER TABLE tb_paper ADD modified text, ADD present text, ADD correspond text AFTER category;

DESC tb_paper;


-- 14. Change the data type of status from int(11) to Boolean . Show your command and captured screen. Note that the
-- status column is used for storing either 0 (False) or 1 (True).
-- Example statement:
ALTER TABLE tb_paper CHANGE status status BOOLEAN;

CREATE TABLE IF NOT EXISTS `tb_category` (
    `category_id` int(11) AUTO_INCREMENT,
    `category` text,
    PRIMARY KEY (`category_id`)
);


-- 20. Add a foreign key constraint on the category column of tb_paper table which points to the category_id column of
-- the tb_category table by using ALTER TABLE statement.
-- Example statement:
ALTER TABLE tb_paper ADD FOREIGN KEY (category_id) REFERENCES tb_category(category_id);

desc tb_paper


