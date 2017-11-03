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
   id                   integer not null auto_increment comment '����Աid',
   name                 varchar(20) comment '����Ա����',
   password             varchar(20) comment '����Ա����',
   phone                varchar(20) comment '����Ա�绰',
   cellphone            varchar(11) comment '����Ա�ֻ�',
   email                varchar(50) comment '����Ա����',
   status               varchar(2) default '1' comment '����Ա״̬(0����ʾ����1����ʾ����)',
   role                 varchar(2) default '0' comment '����Ա��ɫ(0����ʾ�ͷ���1����ʾ��������Ա)',
   primary key (id)
);

alter table admin comment '����Ա��';

/*==============================================================*/
/* Table: brand                                                 */
/*==============================================================*/
create table brand
(
   id                   integer not null auto_increment comment 'Ʒ��id',
   name                 varchar(40) comment 'Ʒ����',
   story                varchar(500) comment 'Ʒ�ƹ���',
   logo                 varchar(50) comment 'Ʒ��logo',
   primary key (id)
);

alter table brand comment 'Ʒ�Ʊ�';

/*==============================================================*/
/* Table: collect                                               */
/*==============================================================*/
create table collect
(
   id                   bigint not null auto_increment comment '�ղ�id',
   product_id           integer comment '�ղ���Ʒid',
   product_name         varchar(50) comment '�ղ���Ʒ����',
   product_price        float default 0 comment '�ղ���Ʒ�۸�',
   user_id              integer comment '�û�id',
   primary key (id)
);

alter table collect comment '��Ʒ�ղر�';

/*==============================================================*/
/* Table: consignee_address                                     */
/*==============================================================*/
create table consignee_address
(
   id                   integer not null auto_increment comment '�ջ���ַid',
   consignee            varchar(30) comment '�ջ�������',
   province             varchar(30) comment 'ʡ��',
   city                 varchar(30) comment '����',
   district             varchar(30) comment '��',
   address              varchar(100) comment '��ϸ��ַ',
   postcode             varchar(20) comment '�ʱ�',
   phone                varchar(30) comment '�绰',
   cellphone            varchar(20) comment '�ֻ�',
   deliver_time         date comment '����ͻ�ʱ��',
   isDefault            integer comment '�Ƿ���Ĭ��',
   user_id              integer comment '�û�id',
   primary key (id)
);

alter table consignee_address comment '�ջ���ַ��';

/*==============================================================*/
/* Table: message                                               */
/*==============================================================*/
create table message
(
   id                   integer not null auto_increment comment '����id',
   type                 varchar(2) comment '��������',
   title                varchar(50) comment '��������',
   content              varchar(200) comment '��������',
   file                 varchar(50) comment '�����ļ�',
   user_id              integer comment '�û�id',
   primary key (id)
);

alter table message comment '�û�����';

/*==============================================================*/
/* Table: order_detail                                          */
/*==============================================================*/
create table order_detail
(
   id                   bigint not null auto_increment comment '��ϸid',
   product_pic          varchar(20) comment '��Ʒ·��',
   product_name         varchar(200) comment '��Ʒ����',
   product_count        integer default 0 comment '��Ʒ����',
   product_price        float default 0 comment '��Ʒ����',
   product_id           integer comment '��Ʒid',
   order_id             varchar(20) comment '����id',
   primary key (id)
);

alter table order_detail comment '������ϸ';

/*==============================================================*/
/* Table: picture                                               */
/*==============================================================*/
create table picture
(
   id                   integer not null auto_increment comment 'ͼƬid',
   pic_path             varchar(100) comment 'ͼƬ·��',
   description          varchar(100) comment 'ͼƬ����',
   isdefault            varchar(2) comment '�Ƿ���Ĭ��ͼƬ������ͼƬ(0����1����)',
   product_id           integer comment '��Ʒid',
   primary key (id)
);

alter table picture comment '��ƷͼƬ';

/*==============================================================*/
/* Table: product                                               */
/*==============================================================*/
create table product
(
   id                   integer not null auto_increment comment '��Ʒid',
   product_name         varchar(200) comment '��Ʒ����',
   location             varchar(30) comment '����',
   brand                varchar(30) comment 'Ʒ��',
   brand_id             integer comment 'Ʒ��id',
   series               varchar(30) comment 'ϵ��',
   series_id            integer comment 'ϵ��id',
   model                varchar(50) comment '�ͺ�',
   style                varchar(2) comment '��ʽ(1���б�2��Ů��3�����Ա�)',
   size                 varchar(50) comment '�ߴ�',
   thickness            varchar(20) comment '���',
   mechanism            varchar(50) comment '��о',
   mechanism_type       varchar(2) comment '��о���(1��:��е,2��ʯӢ)',
   watchcase            varchar(20) comment '���',
   dial                 varchar(30) comment '����',
   face                 varchar(50) comment '����',
   watchband            varchar(50) comment '���',
   waterproof           varchar(20) comment '��ˮ',
   function             varchar(50) comment '����',
   pack                 varchar(100) comment '��װ',
   price                float default 0 comment 'ԭ��',
   special_price        float default 0 comment '�ؼ�',
   top_carriage_time    timestamp comment '�ϼ�ʱ��',
   popularity           bigint default 0 comment '����',
   sales                integer default 0 comment '������',
   remark               varchar(100) comment '��ע',
   pic					varchar(200) comment '��ͼƬ',
   primary key (id)
);

alter table product comment '��Ʒ��';

/*==============================================================*/
/* Table: series                                                */
/*==============================================================*/
create table series
(
   id                   integer not null auto_increment comment 'ϵ��id',
   name                 varchar(30) comment 'ϵ����',
   description          varchar(200) comment 'ϵ������',
   brand_id             integer comment 'Ʒ��id',
   primary key (id)
);

alter table series comment 'Ʒ��ϵ��';

/*==============================================================*/
/* Table: t_user                                                */
/*==============================================================*/
create table t_user
(
   id                   integer not null auto_increment comment '�û�id',
   name                 varchar(50) comment '�û���',
   password             varchar(20) comment '����',
   MSN                  varchar(50),
   qq                   varchar(20),
   office_phone         varchar(20) comment '�칫�ҵ绰',
   home_phone           varchar(20) comment '��ͥ�绰',
   cellphone            varchar(20) comment '�ֻ�',
   email                varchar(50) comment '����',
   password_tip         varchar(50) comment '������ʾ����',
   password_answer      varchar(50) comment '������ʾ��',
   last_logintime       timestamp comment '��һ�ε�¼ʱ��',
   balance              float default 0,
   consume              integer default 0 comment '�ۼ�����(�ۼ����Ѵﵽ5000��������VIP��Ա���ﵽ20000������Ϊ�����Ա)',
   level                varchar(2) default '1' comment '��Ա����(1����ͨ��Ա��2��VIP��Ա(�����Ż�)��3�������Ա(�����Ż�))',
   status               varchar(2) default '1' comment '�û�״̬(0����ʾ����1����ʾ����ʹ��)',
   primary key (id)
);

alter table t_user comment '�û���';

/*==============================================================*/
/* Table: userorder                                             */
/*==============================================================*/
create table userorder
(
   id                   varchar(20) not null comment '����id(��ϵͳʱ�����yyyyMMddhhmmss)',
   order_time           timestamp comment '�µ�ʱ��',
   total_price          float default 0 comment '�����ܶ�',
   ispay                varchar(2) default '0' comment '�Ƿ񸶿�(0��δ���1���Ѹ���)',
   issend               varchar(2) default '0' comment '�����Ƿ񷢻�(0��δ������1���ѷ���)',
   isconfirm            varchar(2) default '0' comment '����յ����Ƿ���ȷ��(0��δȷ�ϣ�1����ȷ��)',
   status               varchar(2) default '1' comment '״̬(0����ʾ�رգ�1����ʾ����ʹ��)',
   user_id              integer comment '�û�id',
   primary key (id)
);

alter table userorder comment '�û�����';

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
