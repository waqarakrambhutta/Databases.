CREATE DATABASE CHINOUK;
USE CHINOUK;
CREATE TABLE Employee(
	employee_id INT not null,
    last_name VARCHAR(20),
    first_name VARCHAR(20),
    title VARCHAR(30),
    reportsto INT not null,
    birthdate DATE,
    hiredate DATE,
    address VARCHAR(70),
    PRIMARY KEY (employee_id)
    );
    
CREATE TABLE customer(
	customer_id INT not null,
    last_name VARCHAR(20),
    first_name VARCHAR(20),
    company VARCHAR(30),
    phone VARCHAR(20),
    email VARCHAR(100),
    supportrepid INT not null,
    address VARCHAR(70),
    PRIMARY KEY (customer_id)
);

CREATE TABLE invoices(
	invoice_id INT not null,
    customer_id INT not null,
    invoicedate DATE,
    billingaddress VARCHAR(100),
    trackid INT not null,
    PRIMARY KEY (invoice_id),
    FOREIGN KEY (customer_id) REFERENCES customer(customer_id)
    
);

CREATE TABLE artists(
	artist_id INT not null,
    name VARCHAR(120),
    PRIMARY KEY (artist_id)
);

CREATE TABLE albums(
	album_id INT not null,
    title VARCHAR(160),
    artist_id INT not null,
    PRIMARY KEY (album_id),
    FOREIGN KEY (artist_id) REFERENCES artists(artist_id)
);

CREATE TABLE tracks(
	track_id INT not null,
    name VARCHAR(200),
    album_id INT not null,
    uniteprice decimal,
    PRIMARY KEY (track_id),
    FOREIGN KEY (album_id) REFERENCES albums(album_id)
);

