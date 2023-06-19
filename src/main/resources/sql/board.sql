-- ################
-- board.sql
-- ################


/*
 * board_num_seq sequence
 */
--drop sequence board_bno_seq;
create sequence board_bno_seq start with 1;

/*
 * Board
 */

drop table board;

select * from board;
commit;

CREATE TABLE board (
  bno       NUMBER,
  id        VARCHAR2(15)    NOT NULL,
  pwd       VARCHAR2(10)    NOT NULL,
  email     VARCHAR2(50),
  subject   VARCHAR2(50),
  content   VARCHAR2(4000),
  created   DATE DEFAULT SYSDATE,
  hitcount  NUMBER DEFAULT '0',
    
  CONSTRAINT pk_board_bno PRIMARY KEY(bno)
);


INSERT INTO board (bno, id, pwd, email, subject, content)
VALUES (1, 'john123', 'password1', 'john@example.com', 'First Post', 'This is my first post on the board.');
INSERT INTO board (bno, id, pwd, subject, content, hitcount)
VALUES (2, 'jane456', 'password2', 'Question about topic', 'I have a question about a specific topic. Can someone help me?', 10);
INSERT INTO board (bno, id, pwd, email, subject, content, hitcount)
VALUES (3, 'alex789', 'password3', 'alex@example.com', 'Recommendation needed', 'I need recommendations for a good book to read.', 5);
INSERT INTO board (bno, id, pwd, subject, content)
VALUES (4, 'sara234', 'password4', 'Hello everyone!', 'Just wanted to say hello to everyone in the community.');
INSERT INTO board (bno, id, pwd, email, subject, content, hitcount)
VALUES (5, 'mike567', 'password5', 'mike@example.com', 'Issue with the website', 'I am experiencing some issues with the website. Is anyone else facing the same problem?', 8);

