CREATE DATABASE automobiles_db;
USE automobiles_db;
CREATE TABLE vehicle(
	vehicle_id VARCHAR(10),
    owner_id VARCHAR(10),
    plate_number VARCHAR(20),
    phone_number VARCHAR(11),
	primary key (vehicle_id)
);
    
CREATE TABLE owner(
	owner_id VARCHAR(10),
	owner_name VARCHAR(50),
    owner_address VARCHAR(255),
    primary key (owner_id),
    foreign key (owner_id) references vehicle(owner_id)
);