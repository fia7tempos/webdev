
/* Drop Tables */

DROP TABLE board CASCADE CONSTRAINTS;




/* Drop Sequences */

DROP SEQUENCE seq_board;

select * from board;


/* Create Sequences */

CREATE SEQUENCE seq_board;



/* Create Tables */

CREATE TABLE board
(
	no number NOT NULL,
	title varchar2(100) NOT NULL,
	name varchar2(20) NOT NULL,
	content varchar2(4000) NOT NULL,
	regdate date DEFAULT SYSDATE NOT NULL,
	pwd varchar2(128) NOT NULL,
	readcount number DEFAULT 0 NOT NULL,
	PRIMARY KEY (no)
);

select no,title,name,readcount,content,regdate
from BOARD 
where no=4;

select pwd from board 
where no = 21;


