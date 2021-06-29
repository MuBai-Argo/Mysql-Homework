use Library;
select * from administer;
-- 1 填充管理员表 
INSERT administer(
    a_name,
    a_gender,
    a_salary,
    a_else
)VALUE(
    "员工甲",
    "男",
    7000,
    NULL
);

INSERT administer(
    a_name,
    a_gender,
    a_salary,
    a_else
)VALUE(
    "员工乙",
    "男",
    5000,
    NULL
);

INSERT administer(
    a_name,
    a_gender,
    a_salary,
    a_else
)VALUE(
    "员工丙",
    "男",
    6000,
    NULL
);

INSERT administer(
    a_name,
    a_gender,
    a_salary,
    a_else
)VALUE(
    "员工丁",
    "男",
    8000,
    NULL
);
-- 填充management表
SELECT * FROM management;

INSERT management(
    id_ifvirtual,
    style
)VALUE(
    "是",
    "文学"
);

INSERT management(
    id_ifvirtual,
    style
)VALUE(
    "是",
    "科幻"
);

INSERT management(
    id_ifvirtual,
    style
)VALUE(
    "否",
    "社科"
);

INSERT management(
    id_ifvirtual,
    style
)VALUE(
    "否",
    "专业类"
);

INSERT management(
    id_ifvirtual,
    style
)VALUE(
    "否",
    "纪实"
);

--  填充book表
SELECT * FROM  book;
INSERT book(
    b_name,
    b_author,
    b_shelf,
    b_value,
    b_mid
)VALUE(
	"荒野侦探",
    "波拉尼奥",
    1,
    40,
    1
);

INSERT book(
    b_name,
    b_author,
    b_shelf,
    b_value,
    b_mid
)VALUE(
	"箱男",
    "安部公房",
    1,
    18,
    1
);

INSERT book(
    b_name,
    b_author,
    b_shelf,
    b_value,
    b_mid
)VALUE(
	"醉步男",
    "小林泰三",
    2,
    45,
    2
);

INSERT book(
    b_name,
    b_author,
    b_shelf,
    b_value,
    b_mid
)VALUE(
	"黑暗中的笑声",
    "纳博科夫",
    1,
    50,
    1
);

INSERT book(
    b_name,
    b_author,
    b_shelf,
    b_value,
    b_mid
)VALUE(
	"生命是什么",
    "薛定谔",
    4,
    23,
    4
);

INSERT book(
    b_name,
    b_author,
    b_shelf,
    b_value,
    b_mid
)VALUE(
	"光学",
    "赵光华",
    4,
    20,
    4
);

INSERT book(
    b_name,
    b_author,
    b_shelf,
    b_value,
    b_mid
)VALUE(
	"日俄战争灾难纪实",
    "关捷",
    5,
    60,
    5
);

INSERT book(
    b_name,
    b_author,
    b_shelf,
    b_value,
    b_mid
)VALUE(
	"剧本",
    "罗伯特",
    3,
    40,
    3
);

INSERT book(
    b_name,
    b_author,
    b_shelf,
    b_value,
    b_mid
)VALUE(
	"草枕",
    "夏目漱石",
    1,
    25,
    1
);

INSERT book(
    b_name,
    b_author,
    b_shelf,
    b_value,
    b_mid
)VALUE(
	"自控力",
    "凯莉",
    4,
    30,
    4
);

-- 填充 reader表
SELECT * FROM READER;
INSERT reader(
	r_name,
    r_gender,
    r_able
)VALUE(
	"俾斯麦",
    "男",
    "2021-06-30"
);

INSERT reader(
	r_name,
    r_gender,
    r_able
)VALUE(
	"冉阿让",
    "男",
    "2021-06-29"
);

INSERT reader(
	r_name,
    r_gender,
    r_able
)VALUE(
	"伊丽莎",
    "女",
    "2021-06-28"
);

INSERT reader(
	r_name,
    r_gender,
    r_able
)VALUE(
	"卞福汝",
    "男",
    "2021-07-30"
);

INSERT reader(
	r_name,
    r_gender,
    r_able
)VALUE(
	"堂吉诃德",
    "男",
    "2021-08-30"
);


-- 填充registeration表
select * from registeration;

INSERT registeration(
	re_rent,
    re_return,
    re_workid,
    re_license,
    re_bookid,
    re_overtime
)VALUE(
	"2011-01-22",
    "2018-02-24",
    1, 
    1,
    1,
    "是"
);
INSERT registeration(
	re_rent,
    re_return,
    re_workid,
    re_license,
    re_bookid,
    re_overtime
)VALUE(
	"2011-01-23",
    "2011-02-24",
    2, 
    3,
    7,
    "否"
);
INSERT registeration(
	re_rent,
    re_return,
    re_workid,
    re_license,
    re_bookid,
    re_overtime
)VALUE(
	"2011-04-23",
    "2012-01-01",
    2, 
    4,
    5,
    "否"
);
INSERT registeration(
	re_rent,
    re_return,
    re_workid,
    re_license,
    re_bookid,
    re_overtime
)VALUE(
	"2017-12-20",
    "2018-03-31",
    2, 
    3,
    3,
    "否"
);
INSERT registeration(
	re_rent,
    re_return,
    re_workid,
    re_license,
    re_bookid,
    re_overtime
)VALUE(
	"2018-11-03",
    "2021-03-12",
    3, 
    2,
    9,
    "是"
);
INSERT registeration(
	re_rent,
    re_return,
    re_workid,
    re_license,
    re_bookid,
    re_overtime
)VALUE(
	"2011-02-23",
    "2019-02-24",
    4, 
    5,
    8,
    "是"
);

