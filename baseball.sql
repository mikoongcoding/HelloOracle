CREATE TABLE baseball
(game_no number(5)
,game_seq number(2)
,game_date varchar2(30)
,input varchar2(10)
,hint varchar2(30)
,dap varchar2(10)
,score number(3)
,MEMBER_ID varchar2(10)
,constraint bgame_no_seq_pk primary key(game_no,game_seq)
,constraint mem_id_fk foreign key(MEMBER_ID)
references member(MEMBER_ID)
)

������

SELECT seq_baseball.nextval from dual

SELECT * FROM member

edit baseball

insert into baseball(game_no, game_seq, game_date
                     ,input, hint, dap, score, member_id)
            values(seq_baseball.nextval,2,to_char(sysdate,'YYYY-MM-DD')
                     ,'267','1��1��',278,10,'haha')
                     
���̵�� ����� ��� �������Ѿ� �Ѵ� �׸��� ó���Ѵ�
and��

SELECT member_name
  FROM member
  WHERE member_id='haha'
   AND member_pw='me'
   
SELECT member_name
  FROM member
  WHERE member_id = :id
   AND member_pw = :pw
   