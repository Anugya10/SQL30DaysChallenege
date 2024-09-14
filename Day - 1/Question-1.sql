/* Write an SQL query to find out the name of the product with the highest price in each country. 
We have two tables: Products and Suppliers
- Products table columns: Product_id, Product_name, Supplier_id, Price
- Suppliers table columns: Supplier_id, Supplier_name, Country
return product_name, price and country*/

create table suppliers (
supplier_id int primary key,
supplier_name varchar(25),
country varchar(25));

insert into suppliers values (501, 'alam', 'India'), (502, 'rex', 'US'), (503, 'dodo', 'India'), 
							(504, 'rahul', 'US'), (505, 'zara', 'canda'), (506, 'max', 'Canada');
                            
CREATE TABLE products(
    product_id int PRIMARY KEY,
    product_name VARCHAR(25),
    supplier_id int,
    price float,
    FOREIGN KEY (supplier_id) REFERENCES suppliers(supplier_id)
);

INSERT INTO products
VALUES 
(201, 'iPhone 14', 501, 1299),
(202, 'iPhone 8', 502, 999),
(204, 'iPhone 11', 502, 1199),
(205, 'iPhone 13', 502, 1199),
(208, 'iPhone 14', 503, 1299),
(209, 'iPhone 11', 503, 1199),
(206, 'iPhone 14', 501, 1299),
(214, 'iPhone 14', 501, 1299),
(287, 'iPhone 14', 503, 1499),
(288, 'iPhone 15', 503, 1499),
(289, 'iPhone 15', 503, 1499),
(290, 'iPhone 14', 503, 1499),
(211, 'iPhone 8', 503, 1299),
(212, 'iPhone 14', 503, 1399),
(213, 'iPhone 8', 502, 1099);
