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

drop table board;

select * from board;

create table board (
    num       NUMBER 			NOT NULL,
    id        VARCHAR2(15) 		NOT NULL,
    pwd		  VARCHAR2(10)		NOT NULL,
    email 	  VARCHAR2(50),
    subject   VARCHAR2(50) 		NOT NULL,
    content   VARCHAR2(4000)    NOT NULL,
	hitcount  NUMBER(9),	
    created	  date,
    
    CONSTRAINT pk_board_num PRIMARY KEY(num)
    
);


INSERT INTO board VALUES (1, 'user1', 'password1', 'user1@example.com', 'Example Subject 1', 'Example Content 1', 0, TO_DATE('2023-06-19', 'YYYY-MM-DD'));
INSERT INTO board VALUES (2, 'user2', 'password2', 'user2@example.com', 'Example Subject 2', 'Example Content 2', 0, TO_DATE('2023-06-20', 'YYYY-MM-DD'));
INSERT INTO board VALUES (3, 'user3', 'password3', 'user3@example.com', 'Example Subject 3', 'Example Content 3', 0, TO_DATE('2023-06-21', 'YYYY-MM-DD'));
INSERT INTO board VALUES (4, 'user4', 'password4', 'user4@example.com', 'Example Subject 4', 'Example Content 4', 0, TO_DATE('2023-06-22', 'YYYY-MM-DD'));
INSERT INTO board VALUES (5, 'user5', 'password5', 'user5@example.com', 'Example Subject 5', 'Example Content 5', 0, TO_DATE('2023-06-23', 'YYYY-MM-DD'));

