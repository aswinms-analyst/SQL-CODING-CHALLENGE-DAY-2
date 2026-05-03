# SQL-CODING-CHALLENGE-DAY-2
# Online Bookstore Database

# 📌 Overview
This project demonstrates relational database design and SQL operations through two scenarios:

Online Bookstore – managing books and orders.

Online Store Orders – handling customers, products, and orders.

The exercises cover constraints, relationships, and data integrity — essential skills for building reliable databases.

# 🚀 Challenge Breakdown
🏷️ Online Bookstore
1. CREATE TABLE with Constraints

Books table:

BookID → Primary Key

Title, Author → NOT NULL

ISBN → UNIQUE

Price → DECIMAL with CHECK (Price > 0)

Orders table:

OrderID → Primary Key

BookID → Foreign Key → Books(BookID)

OrderDate → NOT NULL

Quantity → CHECK (Quantity > 0)

2. ALTER TABLE – Default Constraint

Add default value for ISBN.

3. INSERT, RETRIEVE & UPDATE

Insert 5 sample book records.

Retrieve all records.

Update Price or Quantity while respecting constraints.

4. DELETE vs TRUNCATE

DELETE → removes specific rows.

TRUNCATE → clears all rows but keeps table structure.

# 🛒 Online Store Orders
1. CREATE TABLE with Constraints

Customers table:

CustomerID → Primary Key

CustomerName → NOT NULL

Email → UNIQUE

City → VARCHAR(50)

Products table:

ProductID → Primary Key

ProductName → NOT NULL

Category → VARCHAR(50)

Price → DECIMAL with CHECK (Price > 0)

Orders table:

OrderID → Primary Key

CustomerID → Foreign Key → Customers(CustomerID)

ProductID → Foreign Key → Products(ProductID)

OrderDate → NOT NULL

Quantity → CHECK (Quantity > 0)

# 📖 Key Learnings
Relational Integrity: Using PRIMARY KEY and FOREIGN KEY.

Data Validation: Applying NOT NULL, UNIQUE, and CHECK constraints.

Schema Evolution: ALTER TABLE for defaults and modifications.

Data Management: Difference between DELETE and TRUNCATE.

# 🛠️ Tech Stack
SQL (MySQL / PostgreSQL / SQL Server compatible)

Relational Database Design


# 🎯 Goal
This challenge builds strong SQL fundamentals for managing relational databases, preparing you for real‑world applications in e‑commerce and data analytics.











