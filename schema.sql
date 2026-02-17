CREATE DATABASE real_estate;
USE real_estate;


CREATE TABLE properties (
   property_id INT AUTO_INCREMENT PRIMARY KEY,
   property_type VARCHAR(50),
   address VARCHAR(250),
   postal_code VARCHAR(100),
   price_in_euro DECIMAL(15,2),
   size_in_sqft DECIMAL(10,2),
   year_built YEAR,
   status ENUM('available', 'sold', 'under_contract', 'pending'),
   agent_id INT,
   FOREIGN KEY (agent_id) REFERENCES agents(agent_id)
);


CREATE TABLE agents (
   agent_id INT AUTO_INCREMENT PRIMARY KEY,
   first_name VARCHAR(100),
   last_name VARCHAR(100),
   email VARCHAR(100)
);


CREATE TABLE clients (
   client_id INT AUTO_INCREMENT PRIMARY KEY,
   first_name VARCHAR(100),
   last_name VARCHAR(100),
   email VARCHAR(100),
   preferred_property_type VARCHAR(50),
   budget_min DECIMAL(15, 2),
   budget_max DECIMAL(15, 2),
   agent_id INT,
   FOREIGN KEY (agent_id) REFERENCES agents(agent_id)
);


CREATE TABLE transactions (
   transaction_id INT AUTO_INCREMENT PRIMARY KEY,
   transaction_date DATE,
   transaction_amount DECIMAL(15,2),
   payment_status ENUM('completed', 'pending', 'failed'),
   payment_method ENUM('bank_transfer', 'cash'),
   property_id INT,
   client_id INT,
   agent_id INT,
   FOREIGN KEY (property_id) REFERENCES properties(property_id),
   FOREIGN KEY (client_id) REFERENCES clients(client_id),
   FOREIGN KEY (agent_id) REFERENCES agents(agent_id)
);