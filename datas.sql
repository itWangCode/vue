#admin表测试数据
insert into admin(name,password,phone,cellphone,email,status,role) values('admin','123456','020-11111111','13631363290','stone@163.com','1','1');
select * from admin;

#t_user表测试数据
insert into t_user(name,password,cellphone,status,level) values('张三','123','1111111111','1','1');
update t_user set level='1';
select * from t_user;

#插入品牌数据
insert into brand(name,story,logo) values('劳力士','','images/brandlogo/rolex.jpg');
insert into brand(name,story,logo) values('天梭','','images/brandlogo/tissot.jpg');
insert into brand(name,story,logo) values('浪琴','','images/brandlogo/longines.jpg');
insert into brand(name,story,logo) values('欧米茄','','images/brandlogo/omega.jpg');
insert into brand(name,story,logo) values('帝舵','','images/brandlogo/tudor.jpg');
insert into brand(name,story,logo) values('美度','','images/brandlogo/tudor.jpg');
insert into brand(name,story,logo) values('百达翡丽','','images/brandlogo/patek_philippe.jpg');
insert into brand(name,story,logo) values('依波路','','images/brandlogo/borel.jpg');
insert into brand(name,story,logo) values('朗坤','','images/brandlogo/bylacher.jpg');
insert into brand(name,story,logo) values('汉米尔顿 ','','images/brandlogo/namilton.jpg');
insert into brand(name,story,logo) values('卡地亚','','images/brandlogo/cartier.jpg');
insert into brand(name,story,logo) values('梅花','','images/brandlogo/titoni.jpg');
insert into brand(name,story,logo) values('伯爵','','images/brandlogo/piaget.jpg');
insert into brand(name,story,logo) values('江诗丹顿','','images/brandlogo/jiansidandun.jpg');
insert into brand(name,story,logo) values('古琦','','images/brandlogo/guji.jpg');
insert into brand(name,story,logo) values('积家','','images/brandlogo/jijia.jpg');
insert into brand(name,story,logo) values('万国','','images/brandlogo/wangguo.jpg');
insert into brand(name,story,logo) values('宝玑','','images/brandlogo/baoji.jpg');
insert into brand(name,story,logo) values('罗马','','images/brandlogo/luoma.jpg');
insert into brand(name,story,logo) values('爱马仕','','images/brandlogo/aimashi.jpg');
insert into brand(name,story,logo) values('芝柏','','images/brandlogo/zibo.jpg');
insert into brand(name,story,logo) values('真力时','','images/brandlogo/zhenglishi.jpg');
insert into brand(name,story,logo) values('豪雅','','images/brandlogo/aoyi.jpg');
insert into brand(name,story,logo) values('荣汉斯','','images/brandlogo/hangronsi.jpg');

select * from brand;

#插入产品数据
#天梭
insert into product(product_name,brand,brand_id,special_price,popularity,sales,style,mechanism,mechanism_type,remark,pic) 
	values('天梭Tissot 天慕系列 蓝宝石水晶玻璃/折叠扣/日历 女士石英表 T009.310.11.037.00 ','天梭',2,2976,1,1,'1','机械表','1',"轻易配搭 即可展现时尚眼光",'images/201012/thumb_img/5540_thumb_G_1292534363407.jpg');
insert into product(product_name,brand,brand_id,special_price,popularity,sales,style,mechanism,mechanism_type,remark,pic) 
	values('天梭力洛克系列T41.1.423.33机械男表 ','天梭',2,3359 ,2,2,'1','机械表','1',"独特纪念意义 时间造就经典",'images/201109/thumb_img/344_thumb_G_1316563675085.jpg');
insert into product(product_name,brand,brand_id,special_price,popularity,sales,style,mechanism,mechanism_type,remark,pic) 
	values('天梭娉驰100系列T22.1.161.81石英女表','天梭',2,8556 ,3,3,'2','机械表','1',"被誉为世上最性感的运动腕表",'images/201011/thumb_img/4719_thumb_G_1288995948326.jpg');
insert into product(product_name,brand,brand_id,special_price,popularity,sales,style,mechanism,mechanism_type,remark,pic) 
	values('天梭运动系列T039.417.11.047.00石英男表 ','天梭',2,3108 ,4,4,'1','石英表','2',"强大计时功能 酷感十足运动款",'images/201011/thumb_img/4680_thumb_G_1288813013314.jpg');	
insert into product(product_name,brand,brand_id,special_price,popularity,sales,style,mechanism,mechanism_type,remark,pic) 
	values('天梭运动系列T014.427.16.031.00机械男表','天梭',2,5496,8,6,'1','机械表','1',"优雅完美运动款 亦适合正装场合",'images/201011/thumb_img/4662_thumb_G_1289005621058.jpg');
insert into product(product_name,brand,brand_id,special_price,popularity,sales,style,mechanism,mechanism_type,remark,pic) 
	values('天梭Tissot 经典系列 蓝宝石水晶玻璃/防水/日历 男士机械表 T035.407.16.051.01','天梭',2,4236,0,0,'1','机械表','1',"ETA机芯 商务场合绝佳配饰",'images/201011/thumb_img/5110_thumb_G_1289770635554.jpg');
insert into product(product_name,brand,brand_id,special_price,popularity,sales,style,mechanism,mechanism_type,remark,pic) 
	values('天梭PRC200系列T014.421.11.047.00人动电能男表(Tissot)','天梭',2,3468,0,0,'1','机械表','1',"动人弧线 画成时尚味道",'images/201010/thumb_img/3856_thumb_G_1287967862843.jpg');
insert into product(product_name,brand,brand_id,special_price,popularity,sales,style,mechanism,mechanism_type,remark,pic) 
	values('天梭力洛克系列T41.1.483.53机械男表 ','天梭',2,3699,0,0,'1','机械表','1',"纪念诞生地力作 最畅销表款",'images/201009/thumb_img/3619_thumb_G_1283276597389.jpg');		
insert into product(product_name,brand,brand_id,special_price,popularity,sales,style,mechanism,mechanism_type,remark,pic) 
	values('天梭运动系列T014.430.16.057.00机械男表','天梭',2,3489 ,1,1,'1','机械表','1',"天梭销量冠军 深得各类男士喜爱",'images/201009/thumb_img/303_thumb_G_1283464621143.jpg');
insert into product(product_name,brand,brand_id,special_price,popularity,sales,style,mechanism,mechanism_type,remark,pic) 
	values('天梭Tissot 唯意系列 蓝宝石水晶玻璃/防水/日历 女士机械表 T038.207.11.057.01','天梭',2,3720 ,0,0,'2','机械表','1',"唯美浑圆 经典传统之作",'images/201102/thumb_img/5500_thumb_G_1297797056239.jpg');
insert into product(product_name,brand,brand_id,special_price,popularity,sales,style,mechanism,mechanism_type,remark,pic) 
	values('天梭运动系列T035.627.11.051.00自动机械男表','天梭',2,6120 ,0,0,'1','机械表','1',"大气笃定 从容驾驭运动商务场合",'images/201011/thumb_img/4656_thumb_G_1289153520184.jpg');
insert into product(product_name,brand,brand_id,special_price,popularity,sales,style,mechanism,mechanism_type,remark,pic) 
	values('天梭Tissot 经典系列 蓝宝石水晶玻璃/双日历/防水 男士机械表 T019.430.16.031.01','天梭',2,3829 ,0,0,'1','机械表','1',"经典商务外观 ETA机芯精准计时",'images/201105/thumb_img/5278_thumb_G_1304708633213.jpg');
insert into product(product_name,brand,brand_id,special_price,popularity,sales,style,mechanism,mechanism_type,remark,pic) 
	values('天梭PRC200系列T014.421.11.057.00人动电能男表(Tissot)','天梭',2,2976,1,1,'1','机械表','1',"150周年纪念款 情意默默显现 ",'images/201011/thumb_img/4658_thumb_G_1289151780493.jpg');
insert into product(product_name,brand,brand_id,special_price,popularity,sales,style,mechanism,mechanism_type,remark,pic) 
	values('天梭PRC200系列T014.421.11.037.00男表','天梭',2,7836 ,2,2,'1','机械表','1',"顶尖防水功能 动感来源于非凡创意",'images/201105/thumb_img/5729_thumb_G_1304641805280.jpg');
insert into product(product_name,brand,brand_id,special_price,popularity,sales,style,mechanism,mechanism_type,remark,pic) 
	values('天梭腾智系列T013.420.44.202.00石英男表','天梭',2,8556 ,3,3,'2','石英表','2',"功能超群 各种运动场合首选利器",'images/201011/thumb_img/4655_thumb_G_1289154233264.jpg');	
insert into product(product_name,brand,brand_id,special_price,popularity,sales,style,mechanism,mechanism_type,remark,pic) 
	values('天梭Tissot 经典系列 蓝宝石水晶玻璃/防水 情侣石英表  ','天梭',2,3108 ,4,4,'3','情侣表','2',"简约情侣款 相似外观却各具魅力",'images/201009/thumb_img/3618_thumb_G_1283477993769.jpg');
insert into product(product_name,brand,brand_id,special_price,popularity,sales,style,mechanism,mechanism_type,remark,pic) 
	values('天梭Tissot 经典系列 蓝宝石水晶玻璃/日历/防水 情侣机械表 ','天梭',2,3108 ,4,4,'3','情侣表','2',"唯意系列对表 将爱意合二为一",'images/201102/thumb_img/5746_thumb_G_1298225002590.jpg');

#浪琴
insert into product(product_name,brand,brand_id,special_price,popularity,sales,style,mechanism,mechanism_type,remark,pic) 
	values('浪琴Longines 军旗系列 有机玻璃/防水/小三针 男士机械表 L4.746.8.72.0','浪琴',3,32292,1,1,'1','机械表','1',"简约大方 适合成熟优雅的男士",'images/201009/thumb_img/3750_thumb_G_1284596450839.jpg');
insert into product(product_name,brand,brand_id,special_price,popularity,sales,style,mechanism,mechanism_type,remark,pic) 
	values('浪琴经典复古系列L4.796.4.72.2机械男表','浪琴',3,19596,8,4,'1','机械表','1',"向堪称美学典范的历史表款致敬",'images/201010/thumb_img/4420_thumb_G_1287020685047.jpg');
insert into product(product_name,brand,brand_id,special_price,popularity,sales,style,mechanism,mechanism_type,remark,pic) 
	values('浪琴康卡斯系列L3.258.0.89.6石英女表','浪琴',3,16928,1,1,'2','石英','2',"恒久魅力 创新技术 完美融于一体",'images/201011/thumb_img/4719_thumb_G_1288995948326.jpg');
insert into product(product_name,brand,brand_id,special_price,popularity,sales,style,mechanism,mechanism_type,remark,pic) 
	values('浪琴L3.662.4.76.6 康卡斯系列 男士机械表','浪琴',3,13432,1,1,'1','机械表','1',"顶尖防水性能 成功人士风范",'images/201010/thumb_img/4428_thumb_G_1287097556936.jpg');


#插入图片表
#天梭
insert into picture(pic_path,description,isdefault,product_id) values('images/201012/thumb_img/5540_thumb_G_1292534363407.jpg','','1',1);
insert into picture(pic_path,description,isdefault,product_id) values('images/201109/thumb_img/344_thumb_G_1316563675085.jpg','','1',2);
insert into picture(pic_path,description,isdefault,product_id) values('images/201011/thumb_img/4719_thumb_G_1288995948326.jpg','','1',3);
insert into picture(pic_path,description,isdefault,product_id) values('images/201011/thumb_img/4680_thumb_G_1288813013314.jpg','','1',4);
insert into picture(pic_path,description,isdefault,product_id) values('images/201011/thumb_img/4662_thumb_G_1289005621058.jpg','','1',5);
insert into picture(pic_path,description,isdefault,product_id) values('images/201011/thumb_img/5110_thumb_G_1289770635554.jpg','','1',6);
insert into picture(pic_path,description,isdefault,product_id) values('images/201010/thumb_img/3856_thumb_G_1287967862843.jpg','','1',7);
insert into picture(pic_path,description,isdefault,product_id) values('images/201009/thumb_img/3619_thumb_G_1283276597389.jpg','','1',8);
insert into picture(pic_path,description,isdefault,product_id) values('images/201009/thumb_img/303_thumb_G_1283464621143.jpg','','1',9);
insert into picture(pic_path,description,isdefault,product_id) values('images/201102/thumb_img/5500_thumb_G_1297797056239.jpg','','1',10);
insert into picture(pic_path,description,isdefault,product_id) values('images/201011/thumb_img/4656_thumb_G_1289153520184.jpg','','1',11);
insert into picture(pic_path,description,isdefault,product_id) values('images/201105/thumb_img/5278_thumb_G_1304708633213.jpg','','1',12);
insert into picture(pic_path,description,isdefault,product_id) values('images/201011/thumb_img/4658_thumb_G_1289151780493.jpg','','1',13);
insert into picture(pic_path,description,isdefault,product_id) values('images/201105/thumb_img/5729_thumb_G_1304641805280.jpg','','1',14);
insert into picture(pic_path,description,isdefault,product_id) values('images/201011/thumb_img/4655_thumb_G_1289154233264.jpg','','1',15);
insert into picture(pic_path,description,isdefault,product_id) values('images/201009/thumb_img/3618_thumb_G_1283477993769.jpg','','1',16);
insert into picture(pic_path,description,isdefault,product_id) values('images/201102/thumb_img/5746_thumb_G_1298225002590.jpg','','1',17);


#浪琴
insert into picture(pic_path,description,isdefault,product_id) values('images/201009/thumb_img/3750_thumb_G_1284596450839.jpg','','1',18);
insert into picture(pic_path,description,isdefault,product_id) values('images/201010/thumb_img/4420_thumb_G_1287020685047.jpg','','1',19);
insert into picture(pic_path,description,isdefault,product_id) values('images/201011/thumb_img/4719_thumb_G_1288995948326.jpg','','1',20);
insert into picture(pic_path,description,isdefault,product_id) values('images/201010/thumb_img/4428_thumb_G_1287097556936.jpg','','1',21);

select * from product;
select * from picture;

select * from consignee_address;

select * from userorder;
select * from order_detail;




