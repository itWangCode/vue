#admin���������
insert into admin(name,password,phone,cellphone,email,status,role) values('admin','123456','020-11111111','13631363290','stone@163.com','1','1');
select * from admin;

#t_user���������
insert into t_user(name,password,cellphone,status,level) values('����','123','1111111111','1','1');
update t_user set level='1';
select * from t_user;

#����Ʒ������
insert into brand(name,story,logo) values('����ʿ','','images/brandlogo/rolex.jpg');
insert into brand(name,story,logo) values('����','','images/brandlogo/tissot.jpg');
insert into brand(name,story,logo) values('����','','images/brandlogo/longines.jpg');
insert into brand(name,story,logo) values('ŷ����','','images/brandlogo/omega.jpg');
insert into brand(name,story,logo) values('�۶�','','images/brandlogo/tudor.jpg');
insert into brand(name,story,logo) values('����','','images/brandlogo/tudor.jpg');
insert into brand(name,story,logo) values('�ٴ�����','','images/brandlogo/patek_philippe.jpg');
insert into brand(name,story,logo) values('����·','','images/brandlogo/borel.jpg');
insert into brand(name,story,logo) values('����','','images/brandlogo/bylacher.jpg');
insert into brand(name,story,logo) values('���׶��� ','','images/brandlogo/namilton.jpg');
insert into brand(name,story,logo) values('������','','images/brandlogo/cartier.jpg');
insert into brand(name,story,logo) values('÷��','','images/brandlogo/titoni.jpg');
insert into brand(name,story,logo) values('����','','images/brandlogo/piaget.jpg');
insert into brand(name,story,logo) values('��ʫ����','','images/brandlogo/jiansidandun.jpg');
insert into brand(name,story,logo) values('����','','images/brandlogo/guji.jpg');
insert into brand(name,story,logo) values('����','','images/brandlogo/jijia.jpg');
insert into brand(name,story,logo) values('���','','images/brandlogo/wangguo.jpg');
insert into brand(name,story,logo) values('����','','images/brandlogo/baoji.jpg');
insert into brand(name,story,logo) values('����','','images/brandlogo/luoma.jpg');
insert into brand(name,story,logo) values('������','','images/brandlogo/aimashi.jpg');
insert into brand(name,story,logo) values('֥��','','images/brandlogo/zibo.jpg');
insert into brand(name,story,logo) values('����ʱ','','images/brandlogo/zhenglishi.jpg');
insert into brand(name,story,logo) values('����','','images/brandlogo/aoyi.jpg');
insert into brand(name,story,logo) values('�ٺ�˹','','images/brandlogo/hangronsi.jpg');

select * from brand;

#�����Ʒ����
#����
insert into product(product_name,brand,brand_id,special_price,popularity,sales,style,mechanism,mechanism_type,remark,pic) 
	values('����Tissot ��Ľϵ�� ����ʯˮ������/�۵���/���� ŮʿʯӢ�� T009.310.11.037.00 ','����',2,2976,1,1,'1','��е��','1',"������� ����չ��ʱ���۹�",'images/201012/thumb_img/5540_thumb_G_1292534363407.jpg');
insert into product(product_name,brand,brand_id,special_price,popularity,sales,style,mechanism,mechanism_type,remark,pic) 
	values('���������ϵ��T41.1.423.33��е�б� ','����',2,3359 ,2,2,'1','��е��','1',"���ؼ������� ʱ����;���",'images/201109/thumb_img/344_thumb_G_1316563675085.jpg');
insert into product(product_name,brand,brand_id,special_price,popularity,sales,style,mechanism,mechanism_type,remark,pic) 
	values('����泳�100ϵ��T22.1.161.81ʯӢŮ��','����',2,8556 ,3,3,'2','��е��','1',"����Ϊ�������Ըе��˶����",'images/201011/thumb_img/4719_thumb_G_1288995948326.jpg');
insert into product(product_name,brand,brand_id,special_price,popularity,sales,style,mechanism,mechanism_type,remark,pic) 
	values('�����˶�ϵ��T039.417.11.047.00ʯӢ�б� ','����',2,3108 ,4,4,'1','ʯӢ��','2',"ǿ���ʱ���� ���ʮ���˶���",'images/201011/thumb_img/4680_thumb_G_1288813013314.jpg');	
insert into product(product_name,brand,brand_id,special_price,popularity,sales,style,mechanism,mechanism_type,remark,pic) 
	values('�����˶�ϵ��T014.427.16.031.00��е�б�','����',2,5496,8,6,'1','��е��','1',"���������˶��� ���ʺ���װ����",'images/201011/thumb_img/4662_thumb_G_1289005621058.jpg');
insert into product(product_name,brand,brand_id,special_price,popularity,sales,style,mechanism,mechanism_type,remark,pic) 
	values('����Tissot ����ϵ�� ����ʯˮ������/��ˮ/���� ��ʿ��е�� T035.407.16.051.01','����',2,4236,0,0,'1','��е��','1',"ETA��о ���񳡺Ͼ�������",'images/201011/thumb_img/5110_thumb_G_1289770635554.jpg');
insert into product(product_name,brand,brand_id,special_price,popularity,sales,style,mechanism,mechanism_type,remark,pic) 
	values('����PRC200ϵ��T014.421.11.047.00�˶������б�(Tissot)','����',2,3468,0,0,'1','��е��','1',"���˻��� ����ʱ��ζ��",'images/201010/thumb_img/3856_thumb_G_1287967862843.jpg');
insert into product(product_name,brand,brand_id,special_price,popularity,sales,style,mechanism,mechanism_type,remark,pic) 
	values('���������ϵ��T41.1.483.53��е�б� ','����',2,3699,0,0,'1','��е��','1',"����������� ������",'images/201009/thumb_img/3619_thumb_G_1283276597389.jpg');		
insert into product(product_name,brand,brand_id,special_price,popularity,sales,style,mechanism,mechanism_type,remark,pic) 
	values('�����˶�ϵ��T014.430.16.057.00��е�б�','����',2,3489 ,1,1,'1','��е��','1',"���������ھ� ��ø�����ʿϲ��",'images/201009/thumb_img/303_thumb_G_1283464621143.jpg');
insert into product(product_name,brand,brand_id,special_price,popularity,sales,style,mechanism,mechanism_type,remark,pic) 
	values('����Tissot Ψ��ϵ�� ����ʯˮ������/��ˮ/���� Ůʿ��е�� T038.207.11.057.01','����',2,3720 ,0,0,'2','��е��','1',"Ψ����Բ ���䴫ͳ֮��",'images/201102/thumb_img/5500_thumb_G_1297797056239.jpg');
insert into product(product_name,brand,brand_id,special_price,popularity,sales,style,mechanism,mechanism_type,remark,pic) 
	values('�����˶�ϵ��T035.627.11.051.00�Զ���е�б�','����',2,6120 ,0,0,'1','��е��','1',"�����ƶ� ���ݼ�Ԧ�˶����񳡺�",'images/201011/thumb_img/4656_thumb_G_1289153520184.jpg');
insert into product(product_name,brand,brand_id,special_price,popularity,sales,style,mechanism,mechanism_type,remark,pic) 
	values('����Tissot ����ϵ�� ����ʯˮ������/˫����/��ˮ ��ʿ��е�� T019.430.16.031.01','����',2,3829 ,0,0,'1','��е��','1',"����������� ETA��о��׼��ʱ",'images/201105/thumb_img/5278_thumb_G_1304708633213.jpg');
insert into product(product_name,brand,brand_id,special_price,popularity,sales,style,mechanism,mechanism_type,remark,pic) 
	values('����PRC200ϵ��T014.421.11.057.00�˶������б�(Tissot)','����',2,2976,1,1,'1','��е��','1',"150�������� ����ĬĬ���� ",'images/201011/thumb_img/4658_thumb_G_1289151780493.jpg');
insert into product(product_name,brand,brand_id,special_price,popularity,sales,style,mechanism,mechanism_type,remark,pic) 
	values('����PRC200ϵ��T014.421.11.037.00�б�','����',2,7836 ,2,2,'1','��е��','1',"�����ˮ���� ������Դ�ڷǷ�����",'images/201105/thumb_img/5729_thumb_G_1304641805280.jpg');
insert into product(product_name,brand,brand_id,special_price,popularity,sales,style,mechanism,mechanism_type,remark,pic) 
	values('��������ϵ��T013.420.44.202.00ʯӢ�б�','����',2,8556 ,3,3,'2','ʯӢ��','2',"���ܳ�Ⱥ �����˶�������ѡ����",'images/201011/thumb_img/4655_thumb_G_1289154233264.jpg');	
insert into product(product_name,brand,brand_id,special_price,popularity,sales,style,mechanism,mechanism_type,remark,pic) 
	values('����Tissot ����ϵ�� ����ʯˮ������/��ˮ ����ʯӢ��  ','����',2,3108 ,4,4,'3','���±�','2',"��Լ���¿� �������ȴ��������",'images/201009/thumb_img/3618_thumb_G_1283477993769.jpg');
insert into product(product_name,brand,brand_id,special_price,popularity,sales,style,mechanism,mechanism_type,remark,pic) 
	values('����Tissot ����ϵ�� ����ʯˮ������/����/��ˮ ���»�е�� ','����',2,3108 ,4,4,'3','���±�','2',"Ψ��ϵ�жԱ� ������϶�Ϊһ",'images/201102/thumb_img/5746_thumb_G_1298225002590.jpg');

#����
insert into product(product_name,brand,brand_id,special_price,popularity,sales,style,mechanism,mechanism_type,remark,pic) 
	values('����Longines ����ϵ�� �л�����/��ˮ/С���� ��ʿ��е�� L4.746.8.72.0','����',3,32292,1,1,'1','��е��','1',"��Լ�� �ʺϳ������ŵ���ʿ",'images/201009/thumb_img/3750_thumb_G_1284596450839.jpg');
insert into product(product_name,brand,brand_id,special_price,popularity,sales,style,mechanism,mechanism_type,remark,pic) 
	values('���پ��临��ϵ��L4.796.4.72.2��е�б�','����',3,19596,8,4,'1','��е��','1',"�򿰳���ѧ�䷶����ʷ����¾�",'images/201010/thumb_img/4420_thumb_G_1287020685047.jpg');
insert into product(product_name,brand,brand_id,special_price,popularity,sales,style,mechanism,mechanism_type,remark,pic) 
	values('���ٿ���˹ϵ��L3.258.0.89.6ʯӢŮ��','����',3,16928,1,1,'2','ʯӢ','2',"������� ���¼��� ��������һ��",'images/201011/thumb_img/4719_thumb_G_1288995948326.jpg');
insert into product(product_name,brand,brand_id,special_price,popularity,sales,style,mechanism,mechanism_type,remark,pic) 
	values('����L3.662.4.76.6 ����˹ϵ�� ��ʿ��е��','����',3,13432,1,1,'1','��е��','1',"�����ˮ���� �ɹ���ʿ�緶",'images/201010/thumb_img/4428_thumb_G_1287097556936.jpg');


#����ͼƬ��
#����
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


#����
insert into picture(pic_path,description,isdefault,product_id) values('images/201009/thumb_img/3750_thumb_G_1284596450839.jpg','','1',18);
insert into picture(pic_path,description,isdefault,product_id) values('images/201010/thumb_img/4420_thumb_G_1287020685047.jpg','','1',19);
insert into picture(pic_path,description,isdefault,product_id) values('images/201011/thumb_img/4719_thumb_G_1288995948326.jpg','','1',20);
insert into picture(pic_path,description,isdefault,product_id) values('images/201010/thumb_img/4428_thumb_G_1287097556936.jpg','','1',21);

select * from product;
select * from picture;

select * from consignee_address;

select * from userorder;
select * from order_detail;




