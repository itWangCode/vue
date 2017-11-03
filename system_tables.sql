/*==============================================================*/
/* DBMS name:      MySQL 5.0                                    */
/* Created on:     2011/12/4 18:28:32                           */
/*==============================================================*/


drop table if exists admin;

drop table if exists brand;

drop table if exists collect;

drop table if exists consignee_address;

drop table if exists message;

drop table if exists order_detail;

drop table if exists picture;

drop table if exists product;

drop table if exists series;

drop table if exists t_user;

drop table if exists userorder;

/*==============================================================*/
/* Table: admin                                                 */
/*==============================================================*/
create table admin
(
   id                   integer not null auto_increment comment '管理员id',
   name                 varchar(20) comment '管理员名字',
   password             varchar(20) comment '管理员密码',
   phone                varchar(20) comment '管理员电话',
   cellphone            varchar(11) comment '管理员手机',
   email                varchar(50) comment '管理员邮箱',
   status               varchar(2) default '1' comment '管理员状态(0：表示挂起，1：表示正常)',
   role                 varchar(2) default '0' comment '管理员角色(0：表示客服，1：表示超级管理员)',
   primary key (id)
);

alter table admin comment '管理员表';

/*==============================================================*/
/* Table: brand                                                 */
/*==============================================================*/
create table brand
(
   id                   integer not null auto_increment comment '品牌id',
   name                 varchar(40) comment '品牌名',
   story                varchar(500) comment '品牌故事',
   logo                 varchar(50) comment '品牌logo',
   primary key (id)
);

alter table brand comment '品牌表';

/*==============================================================*/
/* Table: collect                                               */
/*==============================================================*/
create table collect
(
   id                   bigint not null auto_increment comment '收藏id',
   product_id           integer comment '收藏商品id',
   product_name         varchar(50) comment '收藏商品名称',
   product_price        float default 0 comment '收藏商品价格',
   user_id              integer comment '用户id',
   primary key (id)
);

alter table collect comment '商品收藏表';

/*==============================================================*/
/* Table: consignee_address                                     */
/*==============================================================*/
create table consignee_address
(
   id                   integer not null auto_increment comment '收货地址id',
   consignee            varchar(30) comment '收货人姓名',
   province             varchar(30) comment '省份',
   city                 varchar(30) comment '城市',
   district             varchar(30) comment '区',
   address              varchar(100) comment '详细地址',
   postcode             varchar(20) comment '邮编',
   phone                varchar(30) comment '电话',
   cellphone            varchar(20) comment '手机',
   deliver_time         date comment '最佳送货时间',
   isDefault            integer comment '是否是默认',
   user_id              integer comment '用户id',
   primary key (id)
);

alter table consignee_address comment '收货地址表';

/*==============================================================*/
/* Table: message                                               */
/*==============================================================*/
create table message
(
   id                   integer not null auto_increment comment '留言id',
   type                 varchar(2) comment '留言类型',
   title                varchar(50) comment '留言主题',
   content              varchar(200) comment '留言内容',
   file                 varchar(50) comment '留言文件',
   user_id              integer comment '用户id',
   primary key (id)
);

alter table message comment '用户留言';

/*==============================================================*/
/* Table: order_detail                                          */
/*==============================================================*/
create table order_detail
(
   id                   bigint not null auto_increment comment '明细id',
   product_pic          varchar(20) comment '商品路径',
   product_name         varchar(200) comment '商品名称',
   product_count        integer default 0 comment '商品数量',
   product_price        float default 0 comment '商品单价',
   product_id           integer comment '商品id',
   order_id             varchar(20) comment '订单id',
   primary key (id)
);

alter table order_detail comment '订单明细';

/*==============================================================*/
/* Table: picture                                               */
/*==============================================================*/
create table picture
(
   id                   integer not null auto_increment comment '图片id',
   pic_path             varchar(100) comment '图片路径',
   description          varchar(100) comment '图片描述',
   isdefault            varchar(2) comment '是否是默认图片，即主图片(0：否，1：是)',
   product_id           integer comment '商品id',
   primary key (id)
);

alter table picture comment '商品图片';

/*==============================================================*/
/* Table: product                                               */
/*==============================================================*/
create table product
(
   id                   integer not null auto_increment comment '商品id',
   product_name         varchar(200) comment '商品名称',
   location             varchar(30) comment '产地',
   brand                varchar(30) comment '品牌',
   brand_id             integer comment '品牌id',
   series               varchar(30) comment '系列',
   series_id            integer comment '系列id',
   model                varchar(50) comment '型号',
   style                varchar(2) comment '款式(1：男表，2：女表，3：中性表)',
   size                 varchar(50) comment '尺寸',
   thickness            varchar(20) comment '厚度',
   mechanism            varchar(50) comment '机芯',
   mechanism_type       varchar(2) comment '机芯类别(1：:机械,2：石英)',
   watchcase            varchar(20) comment '表壳',
   dial                 varchar(30) comment '表盘',
   face                 varchar(50) comment '表面',
   watchband            varchar(50) comment '表带',
   waterproof           varchar(20) comment '防水',
   function             varchar(50) comment '功能',
   pack                 varchar(100) comment '包装',
   price                float default 0 comment '原价',
   special_price        float default 0 comment '特价',
   top_carriage_time    timestamp comment '上架时间',
   popularity           bigint default 0 comment '人气',
   sales                integer default 0 comment '销售量',
   remark               varchar(100) comment '备注',
   pic					varchar(200) comment '主图片',
   primary key (id)
);

alter table product comment '商品表';

/*==============================================================*/
/* Table: series                                                */
/*==============================================================*/
create table series
(
   id                   integer not null auto_increment comment '系列id',
   name                 varchar(30) comment '系列名',
   description          varchar(200) comment '系列描述',
   brand_id             integer comment '品牌id',
   primary key (id)
);

alter table series comment '品牌系列';

/*==============================================================*/
/* Table: t_user                                                */
/*==============================================================*/
create table t_user
(
   id                   integer not null auto_increment comment '用户id',
   name                 varchar(50) comment '用户名',
   password             varchar(20) comment '密码',
   MSN                  varchar(50),
   qq                   varchar(20),
   office_phone         varchar(20) comment '办公室电话',
   home_phone           varchar(20) comment '家庭电话',
   cellphone            varchar(20) comment '手机',
   email                varchar(50) comment '邮箱',
   password_tip         varchar(50) comment '密码提示问题',
   password_answer      varchar(50) comment '密码提示答案',
   last_logintime       timestamp comment '上一次登录时间',
   balance              float default 0,
   consume              integer default 0 comment '累计消费(累计消费达到5000，升级会VIP会员，达到20000，升级为金钻会员)',
   level                varchar(2) default '1' comment '会员级别(1：普通会员，2：VIP会员(九折优惠)，3，金钻会员(八折优惠))',
   status               varchar(2) default '1' comment '用户状态(0：表示挂起，1：表示正常使用)',
   primary key (id)
);

alter table t_user comment '用户表';

/*==============================================================*/
/* Table: userorder                                             */
/*==============================================================*/
create table userorder
(
   id                   varchar(20) not null comment '订单id(由系统时间组成yyyyMMddhhmmss)',
   order_time           timestamp comment '下单时间',
   total_price          float default 0 comment '订单总额',
   ispay                varchar(2) default '0' comment '是否付款(0：未付款，1：已付款)',
   issend               varchar(2) default '0' comment '卖家是否发货(0：未发货，1：已发货)',
   isconfirm            varchar(2) default '0' comment '买家收到货是否已确认(0：未确认，1：已确认)',
   status               varchar(2) default '1' comment '状态(0：表示关闭，1：表示正常使用)',
   user_id              integer comment '用户id',
   primary key (id)
);

alter table userorder comment '用户订单';

alter table collect add constraint FK_collect_product_reference foreign key (product_id)
      references product (id) on delete restrict on update restrict;

alter table collect add constraint FK_collect_user_reference foreign key (user_id)
      references t_user (id) on delete restrict on update restrict;

alter table consignee_address add constraint FK_consignee_reference foreign key (user_id)
      references t_user (id) on delete restrict on update restrict;

alter table message add constraint FK_message_user_reference foreign key (user_id)
      references t_user (id) on delete restrict on update restrict;

alter table order_detail add constraint FK_detail_product_reference foreign key (product_id)
      references product (id) on delete restrict on update restrict;

alter table order_detail add constraint FK_orderdetail_order_reference foreign key (order_id)
      references userorder (id) on delete restrict on update restrict;

alter table picture add constraint FK_picture_product_reference foreign key (product_id)
      references product (id) on delete restrict on update restrict;

alter table product add constraint FK_brand_reference foreign key (brand_id)
      references brand (id) on delete restrict on update restrict;

alter table product add constraint FK_product_series_reference foreign key (series_id)
      references series (id) on delete restrict on update restrict;

alter table series add constraint FK_series_reference foreign key (brand_id)
      references brand (id) on delete restrict on update restrict;

alter table userorder add constraint FK_order_user_reference foreign key (user_id)
      references t_user (id) on delete restrict on update restrict;
