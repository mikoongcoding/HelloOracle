연습문제:
월요일엔 해당일자에 01일 붙여서 4자리 암호를 만들고, 화요일 11, 수요일 21, 목요일 31,
금요일 41, 토요일 51, 일요일 61을 붙여서 4자리 암호를 만들자
오늘의 암호를 출력하는 sql문을 작성하시오
오늘날짜 06일+목요일31-> 0631

SELECT '0631' as "todayPW" FROM dual

배경지식 : 

SELECT to_char(sysdate,'day')
        ,to_char(sysdate,'DD')
        ,to_char(sysdate,'YYYY-MM-DD HH:MI:SS AM')
    FROM dual
    
문제 풀어보자 :

SELECT 
        to_char(sysdate,'DD')||
        decode(to_char(sysdate,'day'),'월요일','01'
        ,'화요일','11'
        ,'수요일','21'
        ,'목요일','31'
        ,'금요일','41'
        ,'토요일','51'
        ,'일요일','61')as "todayPW"
   FROM dual
   

        