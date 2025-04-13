# bookstoreDBProject

This project is a collaborative effort to design and implement a MySQL relational database for managing a bookstore's operations. 

## Project Objective

To create a normalized, secure, and scalable database system that:
- Stores detailed information on books, authors, publishers, and languages
- Manages customer data and their multiple addresses
- Tracks orders, order history, and shipping status
- Enables meaningful queries for insights and reporting


## Tools & Technologies

- **MySQL** — for building and managing the database
- **Draw.io** — for ERD design and schema visualization
- **Git & GitHub** — for version control and collaboration



## Key Tables

| Table Name        | Description |
|-------------------|-------------|
| `book`            | Stores book details |
| `author`          | Stores author details |
| `book_author`     | Manages many-to-many relationships between books and authors |
| `publisher`       | Stores publisher information |
| `book_language`   | Lists all supported book languages |
| `customer`        | Stores customer records |
| `address`         | Stores address information |
| `customer_address`| Links customers to their addresses |
| `address_status`  | Indicates if an address is current or old |
| `country`         | Lists countries for addresses |
| `cust_order`      | Stores customer orders |
| `order_line`      | Details books in each order |
| `order_status`    | Lists order states (pending, shipped, etc.) |
| `order_history`   | Tracks changes in order status over time |
| `shipping_method` | Lists available shipping options |

