CREATE TABLE my_user (
    id SERIAL PRIMARY KEY,
    name VARCHAR(100),
    age INT,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- Seed data
INSERT INTO my_user (name, age) VALUES ('Mihn', 25);
INSERT INTO my_user (name, age) VALUES ('Matt', 25);
INSERT INTO my_user (name, age) VALUES ('Benjamin', 25);
INSERT INTO my_user (name, age) VALUES ('Dillish', 25);
INSERT INTO my_user (name, age) VALUES ('Samuel', 25);
INSERT INTO my_user (name, age) VALUES ('UCO', 420);