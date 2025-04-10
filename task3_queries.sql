
mysql> CREATE DATABASE ecommerce_data;
Query OK, 1 row affected (0.02 sec)

mysql> USE ecommerce_data;
Database changed
mysql> CREATE TABLE customers (
    ->     customer_id INT PRIMARY KEY,
    ->     name VARCHAR(100),
    ->     email VARCHAR(100),
    ->     country VARCHAR(50)
    -> );
Query OK, 0 rows affected (0.03 sec)

mysql>
mysql> CREATE TABLE orders (
    ->     order_id INT PRIMARY KEY,
    ->     customer_id INT,
    ->     order_date DATE,
    ->     amount DECIMAL(10, 2),
    ->     FOREIGN KEY (customer_id) REFERENCES customers(customer_id)
    -> );
Query OK, 0 rows affected (0.05 sec)

mysql>
mysql> CREATE TABLE order_items (
    ->     order_id INT,
    ->     product_name VARCHAR(100),
    ->     quantity INT,
    ->     price_per_unit DECIMAL(10, 2),
    ->     FOREIGN KEY (order_id) REFERENCES orders(order_id)
    -> );
Query OK, 0 rows affected (0.05 sec)

mysql> INSERT INTO customers (customer_id, name, email, country) VALUES
    -> (1, 'John Doe', 'john.doe@example.com', 'USA'),
    -> (2, 'Jane Smith', 'jane.smith@example.com', 'UK'),
    -> (3, 'Raj Kumar', 'raj.kumar@example.com', 'India');
Query OK, 3 rows affected (0.02 sec)
Records: 3  Duplicates: 0  Warnings: 0

mysql>
mysql> INSERT INTO orders (order_id, customer_id, order_date, amount) VALUES
    -> (101, 1, '2025-04-01', 500.00),
    -> (102, 2, '2025-04-02', 300.00),
    -> (103, 3, '2025-04-03', 150.00);
Query OK, 3 rows affected (0.01 sec)
Records: 3  Duplicates: 0  Warnings: 0

mysql>
mysql> INSERT INTO order_items (order_id, product_name, quantity, price_per_unit) VALUES
    -> (101, 'Laptop', 1, 500.00),
    -> (102, 'Smartphone', 1, 300.00),
    -> (103, 'Headphones', 2, 75.00);
Query OK, 3 rows affected (0.01 sec)
Records: 3  Duplicates: 0  Warnings: 0