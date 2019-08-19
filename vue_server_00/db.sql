SET NAMES UTF8;
DROP DATABASE IF EXISTS m_nubia;
CREATE DATABASE m_nubia CHARSET=UTF8;
USE m_nubia;
CREATE TABLE n_login(
    id INT PRIMARY KEY AUTO_INCREMENT,
    uname VARCHAR(50),
    upwd VARCHAR(32)
);
INSERT INTO n_login VALUES(null,'tom',md5('123'));
INSERT INTO n_login VALUES(null,'kity',md5('123'));
INSERT INTO n_login VALUES(null,'king',md5('123'));
INSERT INTO n_login VALUES(null,'jerry',md5('123'));
INSERT INTO n_login VALUES(null,'kate',md5('123'));


#首页手机商品列表数据库
USE m_nubia;
DROP TABLE IF EXISTS phone_product;
CREATE TABLE phone_product(
    id INT PRIMARY KEY AUTO_INCREMENT,
    img VARCHAR(100),
    maintitle VARCHAR(50),
    subtitle VARCHAR(50),
    price    DECIMAL(10,2),
    secondprice DECIMAL(12,2)
);
INSERT INTO phone_product VALUES(null,'img/phoneproduct/153674246273.png','红魔3 玄铁黑','5000mAH大电池',3399.00,4230.25);
INSERT INTO phone_product VALUES(null,'img/phoneproduct/154985403618.png','红魔3 赤焰红','骁龙855',4321.00,5000.25);
INSERT INTO phone_product VALUES(null,'img/phoneproduct/155115913311.png','X海光蓝','双屏黑科技',2345.00,3420.25);
INSERT INTO phone_product VALUES(null,'img/phoneproduct/156194299121.png','Z18 极夜黑','无边水滴屏',3399.00,4230.25);
INSERT INTO phone_product VALUES(null,'img/phoneproduct/156316813527.png','红魔Mars 曜石黑','电竞RGB炫灯彩带',3399.00,4230.25);
INSERT INTO phone_product VALUES(null,'img/phoneproduct/156403614539.png','Z18mini 青瓷莱','2400万双核像素',3399.00,4230.25);
INSERT INTO phone_product VALUES(null,'img/phoneproduct/5cc5679f5227627.png','红魔3玄铁黑6GB+128GB','',2799,3199);
INSERT INTO phone_product VALUES(null,'img/phoneproduct/5cc5098616ecf44.png','红魔3玄铁黑8GB+128GB','',2999,3499);
INSERT INTO phone_product VALUES(null,'img/phoneproduct/5cc509862275d5.png','红魔3赤焰红8GB+128GB','',2999,3499);
INSERT INTO phone_product VALUES(null,'img/phoneproduct/156403614539.png','红魔3玄铁黑6GB+64GB','',2599,2899);
INSERT INTO phone_product VALUES(null,'img/phoneproduct/5cd3d55db448213.png','红魔3占地迷彩版12GB+256GB','',3799,4299);
INSERT INTO phone_product VALUES(null,'img/phoneproduct/5caab828be8847.png','努比亚阿尔法伯爵黑1G+8G','',2999,3499);
INSERT INTO phone_product VALUES(null,'img/phoneproduct/5ceb3cee05cf548.png','努比亚阿尔法流光金1G+16G','',4499,5678);
INSERT INTO phone_product VALUES(null,'img/phoneproduct/5c37f65d4e1ae1.png','红魔Mars曜石黑8GB+128GB','',2099,3199);
INSERT INTO phone_product VALUES(null,'img/phoneproduct/156316813527.png','红魔Mars曜石黑6GB+64GB','',1899,2699);
INSERT INTO phone_product VALUES(null,'img/phoneproduct/5cee1d61eb2b970.png','红魔Mars迷彩色10GB+256GB','',2999,3999);
INSERT INTO phone_product VALUES(null,'img/phoneproduct/5c161f447c1ff9.png','红魔Mars烈焰红6GB+64GB','',1899,2699);
INSERT INTO phone_product VALUES(null,'img/phoneproduct/5c161f447c1ff9.png','红魔Mars烈焰红8GB+128GB','',2099,3199);
INSERT INTO phone_product VALUES(null,'img/phoneproduct/5c3800478d63198.png','X星空典藏版(蓝金梵高版)8GB+128GB','',4999,5299);
INSERT INTO phone_product VALUES(null,'img/phoneproduct/5c37ff23186a448.png','X海光蓝8GB+128GB','',2199,3399);
INSERT INTO phone_product VALUES(null,'img/phoneproduct/5cb7e735692c647.png','X蓝金版8GB+256GB','',2699,4299);
INSERT INTO phone_product VALUES(null,'img/phoneproduct/5cb7e735692c647.png','Z18极夜黑8GB+256GB','',2499,2799);
INSERT INTO phone_product VALUES(null,'img/phoneproduct/5cb7e735692c647.png','Z18极夜黑6GB+128GB','',2199,2599);
INSERT INTO phone_product VALUES(null,'img/phoneproduct/155115913311.png','Z18极夜黑8GB+128GB','',2699,3299);
INSERT INTO phone_product VALUES(null,'img/phoneproduct/155115913311.png','Z18极夜黑6GB+64GB','',1299,1799);
INSERT INTO phone_product VALUES(null,'img/phoneproduct/153674246273.png','Z18mini青瓷蓝8GB+128GB','',3299,3599);
INSERT INTO phone_product VALUES(null,'img/phoneproduct/153674246273.png','Z18mini青瓷蓝6GB+64GB','',2099,2599);









#首页手机配件商品列表数据库
USE m_nubia;
DROP DATABASE IF EXISTS part_product;
CREATE TABLE part_product(
    id INT PRIMARY KEY AUTO_INCREMENT,
    img VARCHAR(100),
    title VARCHAR(50),
    price    DECIMAL(10,2)
);
INSERT INTO part_product VALUES(null,'img/partproduct/155497654614.png','nubia pods',499);
INSERT INTO part_product VALUES(null,'img/partproduct/155650730519.png','红魔弹夹移动电源',149);
INSERT INTO part_product VALUES(null,'img/partproduct/155650736968.png','红魔电竞魔盒',199);
INSERT INTO part_product VALUES(null,'img/partproduct/155650743029.png','红魔3电竞向量保护套',79);
INSERT INTO part_product VALUES(null,'img/partproduct/155650754435.png','红魔3双滑轨保护套',49);
INSERT INTO part_product VALUES(null,'img/partproduct/156099674114.png','PD快速电源适配器',89);
INSERT INTO part_product VALUES(null,'img/partproduct/5c3bf1701cf0b30.png','红魔战神手柄黑色',179);
INSERT INTO part_product VALUES(null,'img/partproduct/5cfe26139f9da38.png','PD快充线TypeC',49);
INSERT INTO part_product VALUES(null,'img/partproduct/5cebbe12c6da437.png','万魔联盟(时尚真无线耳机)',499);
INSERT INTO part_product VALUES(null,'img/partproduct/5cc8089b2755870.png','红魔Mars手柄专用保护套黑色',29);
INSERT INTO part_product VALUES(null,'img/partproduct/5c75047a791cd51.png','律音耳机(新版)红色',69);
INSERT INTO part_product VALUES(null,'img/partproduct/5cb7e7358343273.png','红魔电竞耳机红色',199);
INSERT INTO part_product VALUES(null,'img/partproduct/5c3bf16fd64d439.png','红魔Mars向量保护套黑色',79);
INSERT INTO part_product VALUES(null,'img/partproduct/152826651329.png','红魔游戏T桖黑色S号',79);
INSERT INTO part_product VALUES(null,'img/partproduct/5cb80c158587031.png','创意贴纸白色',29);
INSERT INTO part_product VALUES(null,'img/partproduct/5152414289298.png','红魔降燥耳机红色',299);
INSERT INTO part_product VALUES(null,'img/partproduct/152349723968.png','Z18mini清水套透明',29);
INSERT INTO part_product VALUES(null,'img/partproduct/5ce4ea77d235924.png','蓝牙耳机黑色',79);
INSERT INTO part_product VALUES(null,'img/partproduct/5cb7ebdae050051.png','VR全景相机黑色',699);
INSERT INTO part_product VALUES(null,'img/partproduct/5c3c32eec1c131.png','律音Pro耳机黑色',149);
INSERT INTO part_product VALUES(null,'img/partproduct/5d4259f246d3f74.png','努比亚随身路由咖啡色',219);
INSERT INTO part_product VALUES(null,'img/partproduct/5c75047a791cd51.png','努比亚运动蓝牙耳机',119);



#创建购物车表与添加测试数据
USE m_nubia;
DROP DATABASE IF EXISTS cart;
CREATE TABLE cart(
    id INT PRIMARY KEY AUTO_INCREMENT,
    img VARCHAR(50),
    title VARCHAR(255),
    price DECIMAL(10,2),
    count INT
);
#创建发现组件中商品列表和详情数据
USE m_nubia;
CREATE TABLE faxian(
    id INT PRIMARY KEY AUTO_INCREMENT,
    img VARCHAR(50),
    title VARCHAR(255),
    subtitle VARCHAR(500),
    pubdate   DATE,
    pageview INT
);
INSERT INTO faxian VALUES(null,"img/faxian/1fa477a79fb986407e6182950fbcf00b.jpg","拯救安卓手机的'魔'物来了","红魔Mars,努比亚",'2019-03-19',16321);
INSERT INTO faxian VALUES(null,"img/faxian/c852b913b60fabbd6b1f64ce87fa7de2.jpg","电竞手机标杆之作:努比亚红魔Mars评测","红魔Mars,努比亚",'2018-12-10',23871);
INSERT INTO faxian VALUES(null,"img/faxian/4b6e2f250f46d738aedb88fb706684eb.jpg","努比亚X评测:设计出彩的双屏手机非你莫属","双屏黑科技",'2018-11-05',21971);
INSERT INTO faxian VALUES(null,"img/faxian/1131b5e1b8715f5709440fe99b027352.jpg","无边框遇上水滴屏,[无界]诞生了","无边框水滴屏",'2018-10-25',11361);
INSERT INTO faxian VALUES(null,"img/faxian/17e64f08f73427a0002505e23ee9c18e.jpg","我的字典里没有怂,只有刚","努比亚红魔手机鉴赏图",'2018-04-25',45622);
INSERT INTO faxian VALUES(null,"img/faxian/c83b20c4198f82173e20ddd6ded15171.jpg","青春更多彩|全能'小钢炮' 努比亚Z18mini震撼发布","一张图带你畅游Z18mini",'2018-04-12',27291);
INSERT INTO faxian VALUES(null,"img/faxian/3d9ad0e2e5ed322092dae5dd73243c61.jpg","V18-年轻人*新设备","6寸全面屏,千元长续航",'2018-03-23',15956);
INSERT INTO faxian VALUES(null,"img/faxian/3c2fd19e3be5df0a2e91b00a60fd1502.jpg","nubia ROM全面升级","手机竟然越升级越流畅!这款ROM全新体验让你欲罢不能",'2018-03-16',28612);
INSERT INTO faxian VALUES(null,"img/faxian/82859ee07dad26916d757841d67b0ab5.jpg","努比亚概念游戏手机亮相MWC 2018","四大创新散热黑科技,打造电竞级的游戏体验!!!",'2018-02-27',15992);
INSERT INTO faxian VALUES(null,"img/faxian/5b66bb90d0a9cedc3788886284c427e9.jpg","全面屏无边框努比亚Z17S荣获'年度影响力技术'大奖","恭喜啦!恭喜啦!小编已激动的说不出话了!!!",'2017-12-11',10511);
INSERT INTO faxian VALUES(null,"img/faxian/7307b871943bd3cb89c4266e6a308910.jpg","带着努比亚Z17S去旅行","Z17S,记录你的全世界",'2017-11-30',8089);
INSERT INTO faxian VALUES(null,"img/faxian/17552f226bbb1bf14cc0f0e9a374c2fe.jpg","赏*Z17miniS","四摄更清晰",'2017-10-20',15061);
INSERT INTO faxian VALUES(null,"img/faxian/40dc6222adfbb776e8d759807dc336fc.jpg","拍照就是这么有趣","克隆相机是一款趣味性十足的拍照模式,让你的照片充满想象~",'2017-09-30',11051);
INSERT INTO faxian VALUES(null,"img/faxian/aaef563ac405965f10f9ff74cd9c9c10.jpg","长假即到,你准备好了吗?","想与家人朋友一起旅游,但又无奈,拍出来的照片都是'人群',内心的OS:说好的风景呢,where?在假期拍摄出你的专属'游客照'",'2017-09-20',10011);
INSERT INTO faxian VALUES(null,"img/faxian/7a34d2038a2de4dffdc811f64b82c9d2.jpg","科技媒体眼中的'Z17畅享版'","从内到外让你了解'Z17畅享版'",'2017-09-06',18401);
INSERT INTO faxian VALUES(null,"img/faxian/c5a4f66d00a897ca083a68391a961c9a.jpg","当红不让-Z17烈焰红","烈似火焰,焰如长虹,红得浓烈",'2017-07-27',18442);
