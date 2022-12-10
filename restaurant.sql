CREATE DATABASE restaurant_db;
USE restaurant_db;

CREATE TABLE tbl(
	table_id int,
    location VARCHAR(255),
    primary KEY (table_id)
);

CREATE TABLE waiter(
	waiter_id int,
    name VARCHAR(100),
    contact_no VARCHAR(11),
    shift VARCHAR(10),
    PRIMARY KEY (waiter_id)
);

CREATE TABLE table_order(
	order_id int,
    date_time DATETIME,
    table_id int,
    waiter_id int,
    PRIMARY KEY (order_id),
    FOREIGN KEY (table_id) REFERENCES tbl(table_id),
    FOREIGN KEY (waiter_id) REFERENCES waiter(waiter_id)
);

CREATE TABLE customer(
	customer_id int,
    name VARCHAR(100),
    NIC_no VARCHAR(16),
    contact_no VARCHAR(11),
    PRIMARY KEY (customer_id)
);

CREATE TABLE reservation(
	reservation_id int,
    date_time DATETIME,
    no_of_pax int,
    order_id int,
    table_id int,
    customer_id int,
    PRIMARY KEY (reservation_id),
    foreign key (order_id) references table_order(order_id),
    foreign key (table_id) references tbl(table_id),
    foreign key (customer_id) references customer(customer_id)
);

CREATE TABLE menu( 

    menu_id INT, 
	description VARCHAR(255), 
	availability INT, 
    PRIMARY KEY (menu_id) 

); 

CREATE TABLE menu_item( 

    menu_item_id INT,
    description VARCHAR(255), 
    price FLOAT,     
    availability INT, 
    menu_id INT, 
    PRIMARY KEY (menu_item_id), 
    FOREIGN KEY (menu_id) REFERENCES menu(menu_id) 

); 

CREATE TABLE order_menu_item( 

    order_id INT, 
    menu_item_id INT, 
    quantity INT, 
    PRIMARY KEY (order_id,menu_item_id), 
    FOREIGN KEY (order_id) REFERENCES table_order(order_id), 
    FOREIGN KEY (menu_item_id) REFERENCES menu_item(menu_item_id) 

); 