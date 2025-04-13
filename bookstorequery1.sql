CREATE TABLE customer (
customer_id INT AUTO_INCREMENT PRIMARY KEY,
first_name VARCHAR(100),
last_name VARCHAR(100),
email VARCHAR(100),
phone INT
);


CREATE TABLE customer_address (
customer_id INT,
address_id INT,
address_status_id INT,
FOREIGN KEY (customer_id) REFERENCES customer(customer_id),
FOREIGN KEY (address_id) REFERENCES address(address_id),
FOREIGN KEY (address_status_id) REFERENCES address_status(address_status_id)
);

CREATE TABLE country(
country_id INT AUTO_INCREMENT PRIMARY KEY,
country_name VARCHAR(100)
);

CREATE TABLE address(
address_id INT AUTO_INCREMENT PRIMARY KEY,
street VARCHAR(255),
city VARCHAR(100),
postal_code VARCHAR(20),
country_id INT,
FOREIGN KEY (country_id) REFERENCES country(country_id)
);

CREATE TABLE address_status (
address_status_id INT AUTO_INCREMENT PRIMARY KEY,
status_name VARCHAR(50)
);