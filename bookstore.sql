CREATE DATABASE bookstore;

CREATE TABLE book(
    book_id PRIMARY KEY,
    title VARCHAR(100) NOT NULL,
    FOREIGN KEY publisher_id REFERENCES publishertable(publisher_id),
    language_id VARCHAR(100) NOT NULL,
    price CURRENCY(10,2) NOT NULL,
    publication_date DATE NOT NULL,
);

CREATE TABLE book_author(
    FOREIGN KEY book_id REFERENCES booktable(book_id),
    FOREIGN KEY author_id REFERENCES authortable(author_id),
);

CREATE TABLE book_language(
    language_id PRIMARY KEY,
    language_name VARCHAR(100) NOT NULL,
);

CREATE TABLE author(
    author_id PRIMARY KEY,
    first_name VARCHAR(100) NOT NULL,
    last_name VARCHAR(100) NOT NULL,
    bio VARCHAR(500) NOT NULL,
);

CREATE TABLE publisher(
    publisher_id PRIMARY KEY,
    publisher_name VARCHAR(100) NOT NULL,
    contact_number VARCHAR(15) NOT NULL,
);

CREATE TABLE cust_order (
order_id INT AUTO_INCREMENT PRIMARY KEY,
customer_id INT,
order_date DATE,
shipping_method_id INT,
order_status_id INT,
total_amount INT,
FOREIGN KEY (customer_id) REFERENCES customer(customer_id),
FOREIGN KEY (shipping_method_id) REFERENCES shipping_method(shipping_method_id),
FOREIGN KEY (order_status_id) REFERENCES order_status(order_status_id)
);

CREATE TABLE order_line (
order_id INT,
book_id INT,
price_at_purchase INT,
FOREIGN KEY (order_id) REFERENCES cust_order(order_id),
FOREIGN KEY (book_id) REFERENCES book(book_id)
);

CREATE TABLE shipping_method (
shipping_method_id INT AUTO_INCREMENT PRIMARY KEY,
method_name VARCHAR(100),
shipping_cost INT
);

CREATE TABLE order_history(
history_id INT AUTO_INCREMENT PRIMARY KEY,
order_id INT,
order_status_id INT,
updated_at DATE,
remarks VARCHAR(255),
FOREIGN KEY (order_id) REFERENCES cust_order(order_id),
FOREIGN KEY (order_status_id) REFERENCES order_status(order_status_id)
)

CREATE TABLE ORDER_STATUS(
order_status_id INT AUTO_INCREMENT PRIMARY KEY,
status_name VARCHAR(100),
)
