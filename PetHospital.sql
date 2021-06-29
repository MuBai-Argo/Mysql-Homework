CREATE DATABASE PetHospital;
USE PetHospital;
CREATE TABLE PET(
	petname VARCHAR(8),
	kind VARCHAR(8),
    weight VARCHAR(8),
    pettype VARCHAR(8),
	oname VARCHAR(8),
    brith DATETIME,
    otelephone VARCHAR(12),
    ctime DATETIME primary key
);
SELECT * FROM PET;
-- DROP DATABASE PetHospital;
INSERT PET(petname, kind, weight, pettype, oname, brith, otelephone, ctime)VALUE(
"Zealda", "海拉利亚人", "98", "公主", "LINK", "2001-03-18", "18801183017", "2017-03-28"
);

INSERT PET(petname, kind, weight, pettype, oname, brith, otelephone, ctime)VALUE(
"雨宫莲", "怪盗", "138", "学生", "LINK", "2011-03-28", "18801183017", "2022-03-28"
);

INSERT PET(petname, kind, weight, pettype, oname, brith, otelephone, ctime)VALUE(
"福山润", "人类", "98", "cv", "LINK", "2001-05-28", "18801183017", "2021-03-28"
);

