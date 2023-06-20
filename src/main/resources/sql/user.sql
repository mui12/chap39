-- ################
-- board.sql
-- ################


/*
 * board_num_seq sequence
 */
--drop sequence board_num_seq;
create sequence board_num_seq start with 1;

/*
 * Board
 */

drop table users;

select * from users;

CREATE TABLE user (
    id       VARCHAR2(20)     NOT NULL,
    password VARCHAR2(20)     NOT NULL,
    name     VARCHAR2(20)     NOT NULL,
    dob      VARCHAR2(8),
    phone    NUMBER(10)       NOT NULL,
    email    VARCHAR2(50),
    role     VARCHAR2(20),
    
    CONSTRAINT pk_user_id PRIMARY KEY (id)
);

-- python, $2a$10$qVHhayvRFvUvNd7043/mgeJbNj8IpJEa.O0PqLVS8GPIHyyy.NrfC, USER
-- java, $2a$10$qVHhayvRFvUvNd7043/mgeJbNj8IpJEa.O0PqLVS8GPIHyyy.NrfC, ADMIN

UPDATE user
SET password = '$2a$10$qVHhayvRFvUvNd7043/mgeJbNj8IpJEa.O0PqLVS8GPIHyyy.NrfC'
WHERE id = 'python';

UPDATE user
SET password = '$2a$10$qVHhayvRFvUvNd7043/mgeJbNj8IpJEa.O0PqLVS8GPIHyyy.NrfC'
WHERE id = 'java';

INSERT INTO user (id, password, name, dob, phone, email, role)
VALUES ('python', '$2a$10$qVHhayvRFvUvNd7043/mgeJbNj8IpJEa.O0PqLVS8GPIHyyy.NrfC', 'John Doe', '19900101', 1234567890, 'john@example.com', 'user');
INSERT INTO user (id, password, name, dob, phone, email, role)
VALUES ('java', '$2a$10$qVHhayvRFvUvNd7043/mgeJbNj8IpJEa.O0PqLVS8GPIHyyy.NrfC', 'John Doe', '19900101', 1234567890, 'john@example.com', 'ADMIN');
INSERT INTO user (id, password, name, dob, phone, email, role)
VALUES ('john123', 'password123', 'John Doe', '19900101', 1234567890, 'john@example.com', 'user');

