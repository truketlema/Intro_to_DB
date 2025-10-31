DROP DATABASE alx_book_store;
CREATE DATABASE alx_book_store;
USE alx_book_store;
CREATE TABLE Authors (
    author_id INTEGER PRIMARY KEY,
    author_name VARCHAR(215)
);
CREATE TABLE Books (
    book_id INTEGER PRIMARY KEY,
    title VARCHAR(130),
    price DOUBLE,
    publication_date DATE,
    author_id INTEGER,
    FOREIGN KEY (author_id)
        REFERENCES Authors (author_id)
);
CREATE TABLE Customers (
    customer_id INTEGER PRIMARY KEY,
    customer_name VARCHAR(215),
    email VARCHAR(215),
    address TEXT
);
CREATE TABLE Orders (
    order_id INTEGER PRIMARY KEY,
    customer_id INTEGER,
    order_date DATE,
    FOREIGN KEY (customer_id)
        REFERENCES Customers (customer_id)
);
CREATE TABLE Order_Details (
    orderdetailid INTEGER PRIMARY KEY,
    order_id INTEGER,
    book_id INTEGER,
    quantity DOUBLE,
    FOREIGN KEY (order_id)
        REFERENCES Orders (order_id),
    FOREIGN KEY (book_id)
        REFERENCES Books (book_id)
);
