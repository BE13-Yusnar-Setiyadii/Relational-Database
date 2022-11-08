create database yusnarsetiyadi;

use yusnarsetiyadi;

create table users(
id int not null primary key auto_increment,
name varchar(50),
gender enum("M","F"),
status enum("active","inactive"),
created_at datetime default current_timestamp,
updated_at datetime default current_timestamp
);

create table payment_methods(
id int not null primary key auto_increment,
name varchar(50),
created_at datetime default current_timestamp,
updated_at datetime default current_timestamp
);

create table operators(
id int not null primary key auto_increment,
operator_name varchar(50),
created_at datetime default current_timestamp,
updated_at datetime default current_timestamp
);

create table product_types(
id int not null primary key auto_increment,
categories varchar(50),
created_at datetime default current_timestamp,
updated_at datetime default current_timestamp
);

create table products(
id int not null primary key auto_increment,
name varchar(50),
price decimal,
product_type_id int,
operator_id int,
created_at datetime default current_timestamp,
updated_at datetime default current_timestamp,
constraint fk_ProductsProductTypes foreign key (product_type_id) references product_types(id),
constraint fk_ProductsOperators foreign key (operator_id) references operators(id)
); 

create table product_descriptions(
product_id int not null primary key auto_increment,
description text,
created_at datetime default current_timestamp,
updated_at datetime default current_timestamp,
constraint fk_ProductDescriptionsProducts foreign key (product_id) references products(id)
);

create table transactions(
id int not null primary key auto_increment,
user_id int,
total_qty int,
total_transaction decimal,
transaction_date datetime,
payment_method_id int,
created_at datetime default current_timestamp,
updated_at datetime default current_timestamp,
constraint fk_TransactionsUsers foreign key (user_id) references users(id),
constraint fk_TransactionsPaymentMethods foreign key (payment_method_id) references payment_methods(id)
);

create table transaction_details(
id int not null primary key auto_increment,
transaction_id int,
product_id int,
price decimal,
qty int,
created_at datetime default current_timestamp,
updated_at datetime default current_timestamp,
constraint fk_TransactionDetailsTransactions foreign key (transaction_id) references transactions(id),
constraint fk_TransactionDetailsProducts foreign key (product_id) references products(id)
);

create table address(
id int not null primary key auto_increment,
user_id int,
address varchar(255),
constraint fk_AddressUsers foreign key (user_id) references users(id)
);

create table user_payment_method_detail(
id int not null primary key auto_increment,
user_id int,
payment_method_id int,
detail varchar(255),
constraint fk_UserPaymentMethodDetailUsers foreign key (user_id) references users(id),
constraint fk_UserPaymentMethodDetailPaymentMethods foreign key (payment_method_id) references payment_methods(id)
);

create table payment_method_descriptions(
payment_method_id int not null primary key auto_increment,
description varchar(255),
created_at datetime default current_timestamp,
updated_at datetime default current_timestamp,
constraint fk_PaymentMethodDescriptionsPayment_Methods foreign key (payment_method_id) references payment_methods(id)
);