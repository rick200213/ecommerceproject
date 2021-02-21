use ecommerce;
create table user(id BIGINT(20),firstName varchar(50),middleName varchar(50),lastName varchar(50),mobile varchar(15),email varchar(50),passwordHash varchar(32),admin TINYINT(1),vendor tinyint(1),registeredAt datetime,lastLogin datetime,intro tinytext,profile text,primary key(id));
desc user;
select * from user;
create table orders(id bigint(20),userID bigint(20),sessionID varchar(100),token varchar(100),status smallint(6),subTotal float,itemDiscount float,tax float,shipping float,total float,promo varchar(50),discount float,grandTotal float,firstName varchar(50),middleName varchar(50),lastName varchar(50),mobile varchar(15),email varchar(50),line1 varchar(50),line2 varchar(50),city varchar(50),province varchar(50),country varchar(50),createdAt datetime,updatedAt datetime,content text,primary key(id));
create table product(id BIGINT(20),userID BIGINT(20),title varchar(75),metaTitle varchar(100),slug varchar(100),summmary TINYTEXT,type SMALLINT(6),sku VARCHAR(100),price float,discount float,quantity smallint(6),shop tinyint(1),createdAt datetime,updatedAt datetime, publishedAt datetime,startsAt datetime,endsAt datetime,content text,primary key(id),FOREIGN KEY (userID) REFERENCES user(id));
create table transaction(id bigint(20),userId bigint(20),orderId bigint(20),code varchar(100),
type smallint(6),mode smallint(6),status smallint(6),createdAt datetime,updatedAt datetime,content TEXT,primary key(id),foreign key(userId) references user(id),foreign key(orderId) references orders(id));
create table cart_item(id bigint(20),productId bigint(20),
cartId bigint(20),sku varchar(100),price float, discount float,
quantity smallint(6),active tinyint(1),createdAt datetime,updatedAt datetime,content text,primary key(id),foreign key(productId) references product(id),foreign key(cartId) references cart(id));
drop table cart;
create table cart(id bigint(20),userId bigint(20),sessionId varchar(100),token varchar(100),status smallint(6)
,firstName varchar(50),middleName varchar(50),lastName varchar(50),mobile varchar(15),email varchar(50),line1 varchar(50),
line2 varchar(50),city varchar(50),province varchar(50),country varchar(50),createdAt datetime,updatedAt datetime,content text,primary key(id));
create table transaction(id bigint(20),userId bigint(20),orderId bigint(20),code varchar(100),type smallint(6),
mode smallint(6),status smallint(6),createdAt datetime,updatedAt datetime,content text);
drop table transaction;
create table product_meta(id bigint(20),productId bigint(20),keey varchar(50),content text,primary key(id),foreign key(productId) references product(id));
create table tag(id bigint(20),title varchar(75),metaTitle varchar(100),content text);
create table product_tag(productId bigint(20),tagId bigint(20));
create table product_category(productId bigint(20),categoryId bigint(20));
create table category(id bigint(20),parentId bigint(20),title varchar(75),metaTitle varchar(100),slug varchar(100),
content text,primary key(id));
desc cart;
desc order_item;
use ecommerce;
show tables;
desc category;
desc product;