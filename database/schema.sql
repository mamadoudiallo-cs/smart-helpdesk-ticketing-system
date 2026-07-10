CREATE DATABASE IF NOT EXISTS helpdesk_ticketing_system;

USE helpdesk_ticketing_system;

CREATE TABLE users (
    user_id INT AUTO_INCREMENT PRIMARY KEY,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    email VARCHAR(255) NOT NULL UNIQUE,
    role VARCHAR(50) NOT NULL,
    created_at DATETIME DEFAULT CURRENT_TIMESTAMP


);

CREATE TABLE categories ( 

category_id INT AUTO_INCREMENT PRIMARY KEY,
category_name VARCHAR(50) NOT NULL UNIQUE
);

CREATE TABLE subcategories (

subcategory_id INT AUTO_INCREMENT PRIMARY KEY,
category_id INT NOT NULL,
subcategory_name VARCHAR(50) NOT NULL UNIQUE,
FOREIGN KEY (category_id) REFERENCES categories(category_id)
); 

CREATE TABLE tickets (
    ticket_id INT AUTO_INCREMENT PRIMARY KEY,
    caller_id INT NOT NULL,
    FOREIGN KEY (caller_id) REFERENCES users(user_id),
    subcategory_id INT NOT NULL,
    FOREIGN KEY (subcategory_id) REFERENCES subcategories(subcategory_id),
    short_description VARCHAR(255) NOT NULL,
    description TEXT, 
    created_at DATETIME DEFAULT CURRENT_TIMESTAMP,
    status VARCHAR(50) NOT NULL
);

INSERT INTO users (first_name, last_name, email, role)
VALUES 
('Mamadou', 'Diallo', 'mdial81@wgu.edu', 'Student'),
('Sarah', 'Johnson', 'Sarahjohnson@college.edu', 'Faculty'),
('Jack', 'Polifka', 'jack.polifka@college.edu', 'IT Technician'), 
('Lisa', 'Admin', 'lisa.admin@collge.edu', 'IT Admin');

INSERT INTO categories (category_name)
VALUES
('Hardware'),
('Software'),
('Network'),
('Account Access'),
('Classroom Technology');

INSERT INTO subcategories (category_id, subcategory_name)
VALUES
(1, 'Laptop'),
(1, 'Printer'),
(2, 'Slack'),
(2, 'Webex'),
(3, 'Wifi'),
(3, 'VPN'),
(4, 'Password Reset'),
(4, 'Account Locked'),
(5, 'Projector'),
(5, 'Smart Board');

INSERT INTO tickets (caller_id, subcategory_id, short_description, description, status)
VALUES
(1, 7, 'Password Reset', 'Student cannot log into their account because they forgot their password', 'Open');









