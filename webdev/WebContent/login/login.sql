
/* Drop Tables */

DROP TABLE member CASCADE CONSTRAINTS;




/* Create Tables */

CREATE TABLE member
(
	user_id varchar2(20) NOT NULL,
	-- sha-256
	user_pw varchar2(128) NOT NULL,
	user_name varchar2(20) NOT NULL,
	PRIMARY KEY (user_id)
);



/* Comments */

COMMENT ON COLUMN member.user_pw IS 'sha-256';

select * from member;

insert into member(user_id,user_pw,user_name)
values('next','a','신해철');

update member set user_pw = (select pwd from board where no=21);

commit

select user_id, user_name 
from member
where user_id='next';