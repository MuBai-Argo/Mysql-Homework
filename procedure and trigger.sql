USE LIBRARY;

show columns from administer;
SELECT * FROM administer;
SELECT * FROM book;
SELECT * FROM management;
SELECT * FROM reader;
SELECT * FROM registeration;
-- 建立存储过程  输入参数 借书人id，所借书籍id，管理员id，随后在登记系统中登记借阅信息
-- 借操作 (假设以当前时间作为登记借阅时间)
delimiter $$
DROP PROCEDURE IF EXISTS `regist_rent`$$
CREATE PROCEDURE regist_rent(
	IN bookid INT, 
	IN licenseid INT, 
	IN administerid INT)
BEGIN
	INSERT INTO registeration(
    re_rent,
    re_return,
    re_workid, 
    re_license, 
    re_bookid,
    re_overtime
    )VALUE(
    NOW(),
    null,
    (SELECT a_workid FROM administer WHERE a_workid = administerid),
    (SELECT r_license FROM reader WHERE r_license = licenseid),
    (SELECT b_id FROM book WHERE b_id = bookid),
    null
    );
	SELECT * FROM registeration;
END$$
delimiter ;

call regist_rent(1, 2, 1);
-- 还操作 存储过程 以当前时间为归还时间 输入借的日期 并存储过程中判断是否逾期（假设超过8个月算逾期）并输出
delimiter $$
DROP PROCEDURE IF EXISTS `regist_return`$$
CREATE PROCEDURE `regist_return`(
	IN rent_time DATETIME,
	OUT return_time DATETIME)
BEGIN
	DECLARE ISOVERTIME ENUM("是", "否");
    DECLARE OVTIME INT;
    DECLARE RENTTIME DATETIME;
    SELECT re_rent FROM registeration WHERE re_rent = rent_time INTO RENTTIME;
    SET OVTIME = TIMESTAMPDIFF(MONTH, RENTTIME, NOW());
	UPDATE registeration SET re_return = NOW() WHERE re_rent = RENTTIME;
    SELECT IF(OVTIME < 9, '是', '否') INTO ISOVERTIME;
	UPDATE registeration SET re_overtime = ISOVERTIME WHERE re_rent = RENTTIME;
	SELECT * FROM registeration;
    SELECT NOW() INTO return_time;
END$$
delimiter ;

CALL regist_return('2021-06-15 01:43:25', @return_time);
SELECT @return_time AS "归还时间"; 
CALL regist_return('2021-06-15 03:06:08', @return_time);
SELECT @return_time AS "归还时间";


-- triggers 每当进行一次借阅将借阅时间与借阅人有效日期进行对比，若借阅日期超过有效日期，则插入无效
SELECT * FROM registeration;
SELECT * FROM reader;
delimiter $$
DROP TRIGGER IF EXISTS `library`.`registeration_after_insert` $$
CREATE TRIGGER `library`.`registeration_after_insert` AFTER INSERT ON `registeration`
FOR EACH ROW
BEGIN
	IF ((SELECT r_able FROM reader WHERE r_license = new.re_license) < new.re_rent) THEN
	BEGIN
		-- 不在有效期内 
        signal sqlstate '45000' set message_text='借阅人借阅证过期';
    END; 
    END IF;
END$$
delimiter ;

INSERT registeration(
	re_rent,
    re_return,
    re_workid,
    re_license,
    re_bookid,
    re_overtime
)VALUE(
	"2022-02-23",
    NULL,
    4, 
    5,
    8,
    "是"
);


