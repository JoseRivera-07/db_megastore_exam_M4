CREATE TABLE customers (
	id SERIAL PRIMARY KEY NOT NULL,
	name TEXT NOT NULL,
	email TEXT UNIQUE NOT NULL,
	phone TEXT NOT NULL,
	address TEXT NOT NULL
);

CREATE TABLE categories (
	id SERIAL PRIMARY KEY NOT NULL,
	name TEXT NOT NULL,
	description TEXT
);

CREATE TABLE suppliers (
	id SERIAL PRIMARY KEY NOT NULL,
	name TEXT NOT NULL,
	email TEXT UNIQUE NOT NULL
);

CREATE TABLE products (
	id SERIAL PRIMARY KEY NOT NULL,
	name TEXT NOT NULL,
	id_category INTEGER NOT NULL REFERENCES categories(id),
	price INTEGER NOT NULL,
	sku TEXT,
	stock INT
);

CREATE TABLE suppliers_products (
	id SERIAL PRIMARY KEY NOT NULL,
	id_supplier INTEGER NOT NULL REFERENCES suppliers(id),
	id_product INTEGER NOT NULL REFERENCES products(id),
	details TEXT
);

CREATE TABLE payment_methods (
	id SERIAL PRIMARY KEY NOT NULL,
	method_name TEXT NOT NULL
);

CREATE TYPE  payment_status AS ENUM (
	'PENDING', 'APPROVED', 'FAILED', 'REFUNDED'
);

CREATE TABLE transactions (
	id SERIAL PRIMARY KEY NOT NULL,
	id_method INTEGER NOT NULL REFERENCES payment_methods(id),
	status payment_status DEFAULT 'PENDING'
); 

CREATE TABLE sale_items (
	id SERIAL PRIMARY KEY NOT NULL,
	id_product INTEGER NOT NULL REFERENCES products(id),
	quanty INTEGER
);

CREATE TABLE sales (
	id SERIAL PRIMARY KEY NOT NULL,
	transaction_id INTEGER NOT NULL REFERENCES transactions(id),
	sold_on TIMESTAMP DEFAULT NOW(),
	items_sale INTEGER NOT NULL REFERENCES sale_items(id),
	id_customer INTEGER NOT NULL REFERENCES customers(id),
	total_sale INTEGER NOT NULL
);


