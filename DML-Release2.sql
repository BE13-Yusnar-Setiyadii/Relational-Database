-- no1
select * from transactions where user_id = 1
union
select * from transactions where user_id = 2;

-- no2
select sum(transaction_details.price) from transactions right join transaction_details on transactions.id = transaction_details.transaction_id
where user_id =1;

-- no3
select count(transactions.id) from transactions
inner join transaction_details on transactions.id = transaction_details.transaction_id
inner join products on products.id = transaction_details.product_id
where product_type_id=2;

-- no4
select products.id, products.name, products.price, products.product_type_id, products.operator_id, products.created_at, products.updated_at, product_types.id, product_types.categories
from products 
inner join product_types on products.product_type_id = product_types.id;

-- no5
select transactions.id, transactions.user_id, users.name, transaction_details.product_id, products.name, transactions.total_qty, transactions.total_transaction, transactions.transaction_date, transactions.payment_method_id, transactions.created_at, transactions.updated_at
from transactions
left join users on transactions.user_id = users.id
inner join transaction_details on transactions.id = transaction_details.transaction_id
inner join products on transaction_details.product_id = products.id;

-- no8
select * from products where id not in (select distinct product_id from transaction_details);