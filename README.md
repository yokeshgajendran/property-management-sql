# Real Estate Property Management Database (SQL Project)

## 📌 Project Overview

This project involves designing and implementing a relational database for a fictional real estate agency, **beRealty**. 

The objective was to create a structured database system to manage:

- Properties
- Agents
- Clients
- Transactions
- Payment tracking

The system supports property listing management, client-agent interaction, transaction recording, and financial reporting using SQL.

---

## 💻 Development Environment

This project was developed using a practical database setup to simulate a real-world working environment.

- **MySQL** – Used as the relational database management system.
- **Docker** – Used to run MySQL inside a containerized environment, replicating modern production-style deployment.
- **IntelliJ IDEA** – Used for writing, testing, and executing SQL queries.

Using Docker allowed me to work with an isolated database instance similar to real-world backend systems. This approach helped me understand how databases are configured, connected, and managed in professional environments rather than relying only on built-in academic tools.

---

## 🏗 Database Design

The database was designed using an Entity Relationship Diagram (ERD) to model:

- Entities
- Attributes
- Relationships
- Cardinality constraints

The schema follows normalization principles (up to Third Normal Form) to reduce redundancy and maintain data integrity.

### 📊 Entity Relationship Diagram

![ER Diagram](erd.png)

---

## 🗂 Database Schema

The database contains the following tables:

- **Agents**
- **Properties**
- **Clients**
- **Transactions**

Key Features:
- Primary Keys
- Foreign Key Constraints
- Unique Constraints
- ENUM usage for property status and payment status
- Referential integrity enforcement

---

## 📥 Sample Data

The database is populated using realistic sample records including:

- Property listings (available, sold, under contract)
- Agent information
- Client preferences and budget ranges
- Transaction records with payment status

---

## 🔎 SQL Operations Implemented

### ✔ Data Definition
- CREATE DATABASE
- CREATE TABLE
- Constraints (PK, FK, UNIQUE)

### ✔ Data Manipulation
- INSERT INTO
- UPDATE statements
- WHERE filtering

### ✔ Data Retrieval & Reporting
- ORDER BY (Top 5 expensive properties)
- GROUP BY & HAVING
- Monthly, Quarterly & Yearly revenue analysis
- COUNT aggregations

### ✔ Joins
- INNER JOIN
- LEFT JOIN
- RIGHT JOIN
- Joins with Subqueries

### ✔ Triggers
- Automatic property status update when transaction is completed
- Default status handling to maintain data consistency

---

## ⚙️ How to Run the Project

1. Create a database (e.g., `real_estate`)
2. Run `schema.sql` to create tables
3. Run `data.sql` to insert sample data
4. Run `queries.sql` to execute analysis queries

Compatible with:
- MySQL
- SQL-based relational databases

---

## 🧠 Concepts Applied

- Relational Database Design
- Entity Relationship Modeling
- Database Normalization (1NF, 2NF, 3NF)
- Referential Integrity
- Trigger-based automation
- Basic reporting and analytics using SQL

---

## 🎯 Learning Outcome

This project demonstrates:

- Database schema design from scratch
- Implementing relationships using foreign keys
- Writing analytical SQL queries
- Automating business logic using triggers
- Understanding consistency and integrity in database systems

---

## 🛠 Tech Stack

- MySQL
- SQL
- IntelliJ IDEA
- SQL Studio
- Docker (for local database setup)

---

## 📎 Academic Context

This project was developed as part of the MSc Data Analytics coursework to demonstrate practical database design and SQL implementation in a real-world business scenario.

