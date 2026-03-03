-- Database creation
CREATE DATABASE db_megastore_exam;

-- Creation of the customers table
-- An auto-incrementing primary key is used for each new record
-- The Email field has the restriction that it must be different for each user in order to more efficiently manage identification credentials and differentiate users
-- The Phone number is in text type to avoid errors with the INTEGER data type and unnecessary use of BIGINT (a data type used for larger numbers that occupies more memory).

CREATE TABLE customers (
	id SERIAL PRIMARY KEY NOT NULL, 
	name TEXT NOT NULL,
	email TEXT UNIQUE NOT NULL, 
	phone TEXT NOT NULL, 
	address TEXT NOT NULL
);
-- Column city added to customers at Mon March 2 : 18:53
ALTER TABLE customers ADD COLUMN city TEXT NOT NULL;


-- Creation of the categories table
-- An auto-incrementing primary key is used for each new record
-- The data stored in the description column is created without the NOT NULL attribute so that
-- the category can be created without a description, although a name is required to validate
-- the category's identity

CREATE TABLE categories (
	id SERIAL PRIMARY KEY NOT NULL,
	name TEXT NOT NULL,
	description TEXT
);


-- Creation of the suppliers table
-- An auto-incrementing primary key is used for each new record
-- The Email field has the restriction that it must be different for each supplier in order to more 
-- efficiently manage identification credentials and differentiate each one

CREATE TABLE suppliers (
	id SERIAL PRIMARY KEY NOT NULL,
	name TEXT NOT NULL,
	email TEXT UNIQUE NOT NULL
);

-- Creation of the products table
-- Auto-increment the ID for each new record
-- Create the relationship with the foreign key categories
-- Product ID
-- Quantity available in inventory

CREATE TABLE products ( 
	id SERIAL PRIMARY KEY NOT NULL, 
	name TEXT NOT NULL,
	id_category INTEGER NOT NULL REFERENCES categories(id), 
	price INTEGER NOT NULL, 
	sku TEXT, 
	stock INT 
);

-- Pivot table to avoid many-to-many relationships between product and supplier; contains relationships 
-- with foreign keys from both tables
CREATE TABLE suppliers_products ( 
	id SERIAL PRIMARY KEY NOT NULL,
	id_supplier INTEGER NOT NULL REFERENCES suppliers(id), 
	id_product INTEGER NOT NULL REFERENCES products(id),
	details TEXT
);

-- Table sale_items to avoid many-to-many (N:M) relationships between products and sale
CREATE TABLE sale_items (
	id SERIAL PRIMARY KEY NOT NULL,
	id_product INTEGER NOT NULL REFERENCES products(id),
	quanty INTEGER
);

-- The sales table records the user who made the purchase, identifies the payment transaction using a 
-- foreign key, and contains the timestamp attribute to identify and record the date of the sale.
CREATE TABLE sales (
	id SERIAL PRIMARY KEY NOT NULL,
	sold_on TIMESTAMP DEFAULT NOW(),
	items_sale INTEGER NOT NULL REFERENCES sale_items(id),
	id_customer INTEGER NOT NULL REFERENCES customers(id),
	total_sale INTEGER NOT NULL
);


