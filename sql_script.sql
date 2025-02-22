create database security_app;

INSERT INTO role (id, name) VALUES (1, 'ADMIN');
INSERT INTO role (id, name) VALUES (2, 'USER');
INSERT INTO role (id, name) VALUES (3, 'CUSTOMER');
INSERT INTO role (id, name) VALUES (4, 'SELLER');

INSERT INTO privillege (id, name) VALUES (1, 'READ');
INSERT INTO privillege (id, name) VALUES (2, 'CREATE');
INSERT INTO privillege (id, name) VALUES (3, 'UPDATE');
INSERT INTO privillege (id, name) VALUES (4, 'DELETE');

INSERT INTO role_privillege (role_id, privillege_id) VALUES (1, 1); -- READ
INSERT INTO role_privillege (role_id, privillege_id) VALUES (1, 2); -- CREATE
INSERT INTO role_privillege (role_id, privillege_id) VALUES (1, 3); -- UPDATE
INSERT INTO role_privillege (role_id, privillege_id) VALUES (1, 4); -- DELETE

INSERT INTO role_privillege (role_id, privillege_id) VALUES (2, 1); -- READ
INSERT INTO role_privillege (role_id, privillege_id) VALUES (2, 2); -- CREATE

INSERT INTO role_privillege (role_id, privillege_id) VALUES (3, 1); -- READ

INSERT INTO role_privillege (role_id, privillege_id) VALUES (4, 1); -- READ
INSERT INTO role_privillege (role_id, privillege_id) VALUES (4, 3); -- UPDATE

INSERT INTO user (id, name, username, password, role_id) VALUES (1, 'John Doe', 'admin', '$2a$10$1eIKKX.LqpRJu53A1Z7q9Ou0P2ThKy57HBy31Rc7F4qHYMEMGl4Oa', 1);
INSERT INTO user (id, name, username, password, role_id) VALUES (2, 'Jane Smith', 'user', '$2a$10$1eIKKX.LqpRJu53A1Z7q9Ou0P2ThKy57HBy31Rc7F4qHYMEMGl4Oa', 2);

select * from user;