-- ################
-- board.sql
-- ################


/*
 * board_num_seq sequence
 */
drop sequence board_num_seq;
create sequence board_num_seq start with 1;

/*
 * Board
 */

drop table board;

create table board (
    num       NUMBER CONSTRAINT board_num_PK PRIMARY KEY,
    id        VARCHAR2(15 char)       NOT NULL,
    subject   VARCHAR2(50 char),
    content   VARCHAR2(2000 char),
    bfile      VARCHAR2(20 char),
    re_ref    NUMBER,
    re_lev    NUMBER,
    re_seq    NUMBER,
    readcount NUMBER,
    ddate	  date
    
);


INSERT INTO board VALUES (1, 'john123', 'Example Subject', 'This is an example content', 'example.jpg', NULL, NULL, NULL, 0, TO_DATE('2023-06-16', 'YYYY-MM-DD'));
INSERT INTO board VALUES (2, 'john123', 'Example Subject', 'This is an example content', 'example.jpg', NULL, NULL, NULL, 0, TO_DATE('2023-06-16', 'YYYY-MM-DD'));