USE join_test_db;

DROP TABLE IF EXISTS users;
DROP TABLE IF EXISTS roles;

CREATE TABLE roles (
id INT UNSIGNED NOT NULL AUTO_INCREMENT,
name VARCHAR(100) NOT NULL,
PRIMARY KEY (id)
);

CREATE TABLE users (
id INT UNSIGNED NOT NULL AUTO_INCREMENT,
name VARCHAR(100) NOT NULL,
email VARCHAR(100) NOT NULL,
role_id INT UNSIGNED DEFAULT NULL,
PRIMARY KEY (id),
FOREIGN KEY (role_id) REFERENCES roles (id)
);

INSERT INTO roles (name) VALUES ('admin');
INSERT INTO roles (name) VALUES ('author');
INSERT INTO roles (name) VALUES ('reviewer');
INSERT INTO roles (name) VALUES ('commenter');

INSERT INTO users (name, email, role_id) VALUES
('bob', 'bob@example.com', 1),
('joe', 'joe@example.com', 2),
('sally', 'sally@example.com', 3),
('adam', 'adam@example.com', 3),
('jane', 'jane@example.com', null),
('mike', 'mike@example.com', null),
('rick', 'rick@example.com', 2),
('john', 'john@example.com', 2),
('mary', 'mary@example.com', null),
('larry', 'larry@example.com', 2);

SELECT *
FROM users
    JOIN roles r
        ON users.role_id = r.id;

SELECT *
FROM users
        LEFT JOIN roles r
              ON users.role_id = r.id;

SELECT *
FROM users
         RIGHT JOIN roles r
              ON users.role_id = r.id;

SELECT roles.name AS Role, COUNT(users.id) AS "Total Users"
FROM roles
LEFT JOIN users
ON roles.id = users.role_id
GROUP BY roles.name;