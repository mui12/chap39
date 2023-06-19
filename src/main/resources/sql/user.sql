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

create table user (
    id       VARCHAR2(20) 	NOT NULL,
    passwird VARCHAR2(20)	NOT NULL,
    name 	 VARCHAR2(20)   NOT NULL,  
    dob   	 VARCHAR2(8) 	NOT NULL,
    phone    NUMBER()    	NOT NULL,
	email    VARCHAR2(),	
    role	 VARCHAR2,
    
    CONSTRAINT pk_user_id PRIMARY KEY(id)
    
);



