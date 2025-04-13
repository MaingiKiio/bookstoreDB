CREATE DATABASE bookstore;

CREATE TABLE booktable(
    book_id PRIMARY KEY,
    title VARCHAR(100) NOT NULL,
    FOREIGN KEY publisher_id REFERENCES publishertable(publisher_id),
    language_id VARCHAR(100) NOT NULL,
    price CURRENCY(10,2) NOT NULL,
    publication_date DATE NOT NULL,
);

CREATE TABLE book_authortable(
    FOREIGN KEY book_id REFERENCES booktable(book_id),
    FOREIGN KEY author_id REFERENCES authortable(author_id),
);

CREATE TABLE book_languagetable(
    language_id PRIMARY KEY,
    language_name VARCHAR(100) NOT NULL,
);

CREATE TABLE authortable(
    author_id PRIMARY KEY,
    first_name VARCHAR(100) NOT NULL,
    last_name VARCHAR(100) NOT NULL,
    bio VARCHAR(500) NOT NULL,
);

CREATE TABLE publishertable(
    publisher_id PRIMARY KEY,
    publisher_name VARCHAR(100) NOT NULL,
    contact_number VARCHAR(15) NOT NULL,
);
