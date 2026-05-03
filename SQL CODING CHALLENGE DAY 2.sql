create database Online_Bookstore;
use Online_Bookstore;

-- CREATE TABLE with PRIMARY & FOREIGN KEY

-- Books table
CREATE TABLE Books (
    BookID INTEGER PRIMARY KEY,
    Title VARCHAR(100) NOT NULL,
    Author VARCHAR(50) NOT NULL,
    ISBN VARCHAR(20) UNIQUE,
    Price DECIMAL(8,2) CHECK (Price > 0)
);

-- Orders table
CREATE TABLE Orders (
    OrderID INTEGER PRIMARY KEY,
    BookID INTEGER,
    OrderDate DATE NOT NULL,
    Quantity INTEGER CHECK (Quantity > 0),
    FOREIGN KEY (BookID) REFERENCES Books(BookID)
);


-- ALTER TABLE – Add Default Constraint


ALTER TABLE Books
ALTER COLUMN ISBN SET DEFAULT 'DEFAULT-ISBN';

-- INSERT, RETRIEVE & UPDATE

-- Insert sample records
INSERT INTO Books (BookID, Title, Author, ISBN, Price) VALUES
(1, 'SQL Fundamentals', 'John Smith', 'ISBN001', 499.99),
(2, 'Database Design', 'Jane Doe', 'ISBN002', 299.50),
(3, 'Advanced SQL', 'Alan Brown', 'ISBN003', 599.00),
(4, 'Data Analytics', 'Mary Johnson', 'ISBN004', 399.75),
(5, 'Python & SQL', 'David Lee', 'ISBN005', 450.00);

-- Retrieve all records
SELECT * FROM Books;

-- Update price (constraint ensures > 0)
UPDATE Books
SET Price = 550.00
WHERE BookID = 3;


-- DELETE vs TRUNCATE

-- Delete specific order
DELETE FROM Orders WHERE OrderID = 2;

-- Clear all orders but keep structure
TRUNCATE TABLE Orders;







