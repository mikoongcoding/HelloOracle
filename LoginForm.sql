/* Formatted on 2020/02/11 오후 2:32:30 (QP5 v5.215.12089.38647) */
아이디가 존재하니? 네 1반환


SELECT member_id
  FROM MEMBER SELECT
 1 FROM member

SELECT emp_name,hobby,NVL(hobby,'없음') FROM temp

SELECT member_id,NVL(member_id,'-1')
    FROM member

자바에서 StringBuilder에 담아 오라클로 전달할 sql문

SELECT
        NVL((SELECT 1 FROM member
        WHERE member_id=:id)
        ,-1) status
  FROM dual



SELECT DECODE((
        nvl((SELECT 1 FROM member
            WHERE member_id=:id)
            ,-1)),1,'아이디가 존재합니다.','아이디가 존재하지 않습니다')
    FROM dual

입력한 아이디가 있으면 1, 없으면 -1


if() {
    if() {
        return 2;
    }ELSE {
        RETURN 0;
    }
}ELSE {
    RETURN -1;
}
-1이면 아이디가 존재하지 않습니다.
1이면 아이디가 존재합니다.
0이면 비번이 틀립니다.
2이면 '이순신'님 환영합니다. (id와 pw가 모두 일치하여 name반환)

SELECT DECODE ( (NVL ( (SELECT 1
                          FROM MEMBER
                         WHERE member_id = :id),
                      -1)),
               1, '아이디가 존재합니다.',
               '아이디가 존재하지 않습니다')
  FROM DUAL 

SELECT
 DECODE((
        nvl((SELECT 1 FROM member
            WHERE member_id=:id)
            ,-1)),1,'아이디가 존재합니다.','아이디가 존재하지 않습니다')
    FROM dual

SELECT
        NVL((SELECT member_name
        FROM member
        WHERE member_id=:id
        AND member_pw=:pw),0) NAME
   FROM dual



SELECT NVL ( (SELECT 1
                FROM MEMBER
               WHERE member_id = :id),
            -1)
          status
  FROM DUAL


SELECT * FROM baseball

/* Formatted on 2020/02/11 오후 2:32:41 (QP5 v5.215.12089.38647) */
SELECT NVL (hobby, 'no') FROM temp

사용자 정의함수 - 내가 만든 함수는 파라미터의 갯수를 변경할수있다
오라클 제공되는 함수 - 파라미터의 갯수를 변경이 불가하다 

SELECT NVL('안녕','null일때') FROM dual

NVL함수는 해당 컬럼에 있는 null을 체크해서 널이 아니면 해당값을 반환, null이면 두번째 파라미터를 반환