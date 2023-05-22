/* This will select the database you want to use
use mydb;
*/

-- Drops existing table 
DROP TABLE IF EXISTS user;
DROP TABLE IF EXISTS review;
DROP TABLE IF EXISTS menu_item;
DROP TABLE IF EXISTS cart;

-- Creates user table
CREATE TABLE user (
    email VARCHAR(45),
    name VARCHAR(45),
    password VARCHAR(45),
    userId INT NOT NULL PRIMARY KEY
);

-- Creates review table
CREATE TABLE review (
    id INTEGER AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255),
    description VARCHAR(255),
    rating VARCHAR(255)
);

-- Adds 2 reviews
INSERT INTO review (name, description, rating) VALUES ("Testing", "Amazing", "5/5");
INSERT INTO review (name, description, rating) VALUES ("What", "Ew", "1/5");

-- Creates menu items table
CREATE TABLE menu_item (
    id INT AUTO_INCREMENT,
    name VARCHAR(45) NOT NULL,
    description VARCHAR(100) NOT NULL,
    foodtype VARCHAR(45),
    price FLOAT NOT NULL,
    imagepath VARCHAR(45) NOT NULL,
    featured BOOLEAN,
    PRIMARY KEY (id)
);

-- Ensures each name is unique and the price is non-negative
ALTER TABLE menu_item ADD CONSTRAINT unique_name UNIQUE (name);
ALTER TABLE menu_item ADD CONSTRAINT nonnegative_price CHECK (price >= 0);

-- Inserts every entry into table "menu_item" (Feel free to add more)
INSERT INTO menu_item (name, description, foodtype, price, imagepath, featured) VALUES ("Salmon Sushi", "2 slices of raw salmon each served over pressed vinegar rice", "sushi", 7.99, "images/salmonsushi.jpg", 1);
INSERT INTO menu_item (name, description, foodtype, price, imagepath, featured) VALUES ("Tuna Toro Sushi", "3 slices of raw tuna belly each served over pressed vinegar rice", "sushi", 12.99, "images/tunatorosushi.jpg", 1);
INSERT INTO menu_item (name, description, foodtype, price, imagepath, featured) VALUES ("Albacore Sushi", "2 slices of raw albacore each served over pressed vinegar rice", "sushi", 6.99, "images/albacoresushi.jpg", 0);
INSERT INTO menu_item (name, description, foodtype, price, imagepath, featured) VALUES ("Mackeral Sushi", "2 slices of seared mackeral each served over pressed vinegar rice", "sushi", 7.99, "images/mackeralsushi.jpg", 0);
INSERT INTO menu_item (name, description, foodtype, price, imagepath, featured) VALUES ("Halibut Sushi", "2 slices of raw halibut each served over pressed vinegar rice", "sushi", 8.99, "images/halibutsushi.jpg", 0);
INSERT INTO menu_item (name, description, foodtype, price, imagepath, featured) VALUES ("Yellowtail Sushi", "2 slices of raw yellotail each served over pressed vinegar rice", "sushi", 7.99, "images/yellowtailsushi.jpg", 0);
INSERT INTO menu_item (name, description, foodtype, price, imagepath, featured) VALUES ("Salon Belly Sushi", "2 slices of raw salmon belly each served over pressed vinegar rice", "sushi", 9.99, "images/salmonbellysushi.jpg", 0);
INSERT INTO menu_item (name, description, foodtype, price, imagepath, featured) VALUES ("Red Clam Sushi", "2 slices of raw red clam each served over pressed vinegar rice", "sushi", 9.99, "images/redclamsushi.jpg", 1);
INSERT INTO menu_item (name, description, foodtype, price, imagepath, featured) VALUES ("Amaebi Sushi", "2 slices of sweet shrimp each served over pressed vinegar rice", "sushi", 9.99, "images/amaebisushi.jpg", 1);
INSERT INTO menu_item (name, description, foodtype, price, imagepath, featured) VALUES ("Tuna Toro Sashimi", "9 pieces of raw tuna belly served with ginger and wasabi", "sashimi", 24.99, "images/tunatorosashimi.jpg", 1);
INSERT INTO menu_item (name, description, foodtype, price, imagepath, featured) VALUES ("Salmon Sashimi", "6 pieces of raw salmon served with ginger and wasabi", "sashimi", 24.99, "images/salmonsashimi.jpg", 0);
INSERT INTO menu_item (name, description, foodtype, price, imagepath, featured) VALUES ("Yellowtail Sashimi", "7 pieces of raw yellowtail served with ginger and wasabi", "sashimi", 24.99, "images/yellowtailsashimi.jpg", 1);
INSERT INTO menu_item (name, description, foodtype, price, imagepath, featured) VALUES ("Albacore Sashimi", "8 pieces of raw albacore served with ginger and wasabi", "sashimi", 19.99, "images/albacoresashimi.jpg", 0);
INSERT INTO menu_item (name, description, foodtype, price, imagepath, featured) VALUES ("Tuna Sashimi", "10 pieces of raw tuna served with ginger and wasabi", "sashimi", 21.99, "images/tunasashimi.jpg", 0);
INSERT INTO menu_item (name, description, foodtype, price, imagepath, featured) VALUES ("Ankimo Sashimi", "10 pieces of raw ankimo served with ginger and wasabi", "sashimi", 29.99, "images/ankimosashimi.jpg", 1);
INSERT INTO menu_item (name, description, foodtype, price, imagepath, featured) VALUES ("Uni Sashimi", "2 pieces of raw uni served with ginger and wasabi", "sashimi", 16.99, "images/unisashimi.jpg", 1);
INSERT INTO menu_item (name, description, foodtype, price, imagepath, featured) VALUES ("Amaebi Sashimi", "6 pieces of sweet shrimp served with ginger and wasabi", "sashimi", 24.99, "images/amaebisashimi.jpg", 1);
INSERT INTO menu_item (name, description, foodtype, price, imagepath, featured) VALUES ("Octopus Sashimi", "5 pieces of raw octopus served with ginger and wasabi", "sashimi", 24.99, "images/octopussashimi.jpg", 1);

-- Creates cart table
CREATE TABLE cart (
    userId INT,
    itemId INT,
    quantity INT,
    orderId INT,
    subtotal FLOAT,
    tax FLOAT,
    grandtotal FLOAT
);

/*Sees if the tables were created
select * from user;
select * from review;
select * from menu_item;
select* from cart;
*/
