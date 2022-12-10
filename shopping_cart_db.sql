CREATE DATABASE shopping_cart_db;
USE shopping_cart_db;

CREATE TABLE customer(
	customer_id int,
    name VARCHAR(100),
    address VARCHAR(255),
    email VARCHAR(100),
    primary key (customer_id)
);

CREATE TABLE product(
	product_id int,
    name VARCHAR(100),
    price NUMERIC(8,2),
    description VARCHAR(255),
    PRIMARY KEY (product_id)
);
-- NUMERIC(8,2) means price have 8 characters, 6 before decimals and 2 after decimals.

CREATE TABLE cart_order(
	order_id INT,
    customer_id INT,
    product_id INT,
    quantity INT,
    order_date DATE,
    primary key (order_id),
    foreign key (customer_id) references customer(customer_id),
    foreign key (product_id) references product(product_id)
);
