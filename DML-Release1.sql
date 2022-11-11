-- no 1a
insert into operators(id, operator_name)
values(1,"andi");
insert into operators(id, operator_name)
values(2,"budi");
insert into operators(id, operator_name)
values(3,"candy");
insert into operators(id, operator_name)
values(4,"dodi");
insert into operators(id, operator_name)
values(5,"edi");

-- no 1b
insert into product_types(id, categories)
values(1, "pakaian");
insert into product_types(id, categories)
values(2, "makanan");
insert into product_types(id, categories)
values(3, "minuman");

-- no 1c
insert into products(id, name, price, product_type_id, operator_id)
values(1, "baju", 50000, 1, 3);
insert into products(id, name, price, product_type_id, operator_id)
values(2, "celana", 40000, 1, 3);

-- no 1d
insert into products(id, name, price, product_type_id, operator_id)
values(3, "sosis", 5000, 2, 1);
insert into products(id, name, price, product_type_id, operator_id)
values(4, "mie instan", 4000, 2, 1);
insert into products(id, name, price, product_type_id, operator_id)
values(5, "telur", 3000, 2, 1);

-- no 1e
insert into products(id, name, price, product_type_id, operator_id)
values(6, "air putih", 1000, 3, 4);
insert into products(id, name, price, product_type_id, operator_id)
values(7, "teh", 6000, 3, 4);
insert into products(id, name, price, product_type_id, operator_id)
values(8, "kopi", 10000, 3, 4);

-- no 1f
insert into product_descriptions(product_id, description)
values(1, "cheap clothes arrived at home, let's buy it");
insert into product_descriptions(product_id, description)
values(2, "contemporary pants, more confident to hang out");
insert into product_descriptions(product_id, description)
values(3, "chicken sausage, meat, etc, gooodddd");
insert into product_descriptions(product_id, description)
values(4, "simple instant noodles for traveling");
insert into product_descriptions(product_id, description)
values(5, "delicious eggs, taken straight from the chicken coop");
insert into product_descriptions(product_id, description)
values(6, "water to keep you from dehydration");
insert into product_descriptions(product_id, description)
values(7, "delicious tea, taken from natural tea leaves");
insert into product_descriptions(product_id, description)
values(8, "black butterfly coffee is ready to accompany your night");

-- no 1g
insert into payment_methods(id, name)
values(1, "COD");
insert into payment_methods(id, name)
values(2, "gopay");
insert into payment_methods(id, name)
values(3, "Virtual Account");

-- no 1h
insert into users(id, name, gender, status)
values(1, "zaki", "M", "active");
insert into users(id, name, gender, status)
values(2, "yusnar", "M", "active");
insert into users(id, name, gender, status)
values(3, "xani", "M", "inactive");
insert into users(id, name, gender, status)
values(4, "wanda", "F", "inactive");
insert into users(id, name, gender, status)
values(5, "vita", "F", "active");

-- no 1i
insert into transactions(id, user_id, total_qty, total_transaction, transaction_date, payment_method_id)
values(1, 1, 1, 1, "2001-11-10 07:29:00", 1);
insert into transactions(id, user_id, total_qty, total_transaction, transaction_date, payment_method_id)
values(2, 1, 1, 1, "2002-11-10 07:29:00", 2);
insert into transactions(id, user_id, total_qty, total_transaction, transaction_date, payment_method_id)
values(3, 1, 1, 1, "2003-11-10 07:29:00", 3);
insert into transactions(id, user_id, total_qty, total_transaction, transaction_date, payment_method_id)
values(4, 2, 1, 1, "2004-11-10 07:29:00", 1);
insert into transactions(id, user_id, total_qty, total_transaction, transaction_date, payment_method_id)
values(5, 2, 1, 1, "2005-11-10 07:29:00", 2);
insert into transactions(id, user_id, total_qty, total_transaction, transaction_date, payment_method_id)
values(6, 2, 1, 1, "2006-11-10 07:29:00", 3);
insert into transactions(id, user_id, total_qty, total_transaction, transaction_date, payment_method_id)
values(7, 5, 1, 1, "2007-11-10 07:29:00", 1);
insert into transactions(id, user_id, total_qty, total_transaction, transaction_date, payment_method_id)
values(8, 5, 1, 1, "2008-11-10 07:29:00", 2);
insert into transactions(id, user_id, total_qty, total_transaction, transaction_date, payment_method_id)
values(9, 5, 1, 1, "2009-11-10 07:29:00", 3);

-- no 1j
insert into transaction_details(id, transaction_id, product_id, price, qty)
values(1, 1, 1, 50000, 1);
insert into transaction_details(id, transaction_id, product_id, price, qty)
values(2, 2, 3, 5000, 1);
insert into transaction_details(id, transaction_id, product_id, price, qty)
values(3, 3, 5, 3000, 1);
insert into transaction_details(id, transaction_id, product_id, price, qty)
values(4, 4, 7, 6000, 1);
insert into transaction_details(id, transaction_id, product_id, price, qty)
values(5, 5, 2, 40000, 1);
insert into transaction_details(id, transaction_id, product_id, price, qty)
values(6, 6, 4, 4000, 1);
insert into transaction_details(id, transaction_id, product_id, price, qty)
values(7, 7, 6, 1000, 1);
insert into transaction_details(id, transaction_id, product_id, price, qty)
values(8, 8, 8, 10000, 1);
insert into transaction_details(id, transaction_id, product_id, price, qty)
values(9, 9, 1, 50000, 2);

-- no 2a
select name from users where gender = "M";

-- no 2b
select * from products where id = 3;

-- no 2c
select * from users where name like "%a%" and created_at between "2022-11-03 08:05:00"and"2022-11-10 08:05:00";

-- no 2d
select count(id) as jumlah_user from users where gender = "F";

-- no 2e
select * from users order by name asc;

-- no 2f
select transactions.id, transactions.user_id, transactions.total_qty, transactions.total_transaction, transactions.transaction_date, transactions.payment_method_id, transaction_details.product_id from transactions left join transaction_details on transactions.id = transaction_details.transaction_id
where transaction_details.product_id = 3 limit 5;

-- no 3a
update products set name = 'product dummy' where id = 1;

-- no 3b
update transaction_details set qty = 3 where product_id =1;

-- no 4a
delete from product_descriptions where product_id = 1;
delete from transaction_details where product_id = 1;
delete from products where id = 1;

-- no 4b
select * from products;
delete from product_descriptions where product_id = 2;
delete from transaction_details where product_id = 2;
delete from products where product_type_id = 1;