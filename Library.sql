CREATE DATABASE Library;
use Library;
CREATE TABLE administer(
	a_workid INT PRIMARY KEY NOT NULL auto_increment,
	a_name VARCHAR(4) NOT NULL,
	a_gender ENUM("男","女") NOT NULL,
	a_salary INT NOT NULL,
	a_else VARCHAR(20)
);

CREATE TABLE reader(
	r_license INT PRIMARY KEY NOT NULL auto_increment,
    r_name VARCHAR(4) NOT NULL,
    r_gender ENUM("男","女") NOT NULL,
    r_able DATETIME NOT NULL
);

CREATE TABLE management(
	m_id INT PRIMARY KEY NOT NULL auto_increment,
    id_ifvirtual ENUM("是","否") NOT NULL,
    style ENUM("科幻","社科","专业类","纪实", "文学") NOT NULL
);

CREATE TABLE book(
	b_id INT PRIMARY KEY NOT NULL auto_increment,
    b_name VARCHAR(10) NOT NULL,
    b_author VARCHAR(4) NOT NULL,
    b_shelf INT,
    b_value INT NOT NULL,
    b_mid INT NOT NULL,
    FOREIGN KEY(b_mid) REFERENCES management(m_id)
);

CREATE TABLE registeration(
	re_rent DATETIME NOT NULL,
    re_return DATETIME,
    re_workid INT NOT NULL,
    re_license INT NOT NULL,
    re_bookid INT NOT NULL,
    PRIMARY KEY(re_rent, re_return),
    re_overtime ENUM("是","否"),
    FOREIGN KEY (re_bookid) REFERENCES book(b_id),
    FOREIGN KEY (re_license) REFERENCES reader(r_license),
    FOREIGN KEY (re_workid) REFERENCES administer(a_workid)
);
ALTER TABLE registeration DROP PRIMARY KEY;
ALTER TABLE registeration ADD constraint PRIMARY KEY (re_rent);
ALTER TABLE registeration modify column re_return DATETIME;
ALTER TABLE book modify column b_shelf INT;
-- drop database library;
show engines;


