--오라클실습소스 1장
SELECT
       salary/18, salary*2/18
    FROM temp
  
SELECT
       to_char(round(salary/18,-1),'999,999,999')||'원' as "홀수급여"
       , round(salary*2/18,-1) as "짝수급여"
    FROM temp
  
SELECT 1||'원', '$'||100 FROM temp

SELECT to_char(123456789,'999,999,999') FROM temp

SELECT round(123.567,2),round(123.567,2)
        ,round(123.567,0),round(123.567,-1) --소수 세번째에서 반올림
    FROM dual
    
Temp자료 중 hobby가 등산인 사원의 이름과 취미를 출력하는 sql문을 작성하시오.

SELECT emp_name "이름", hobby "취미"    
   FROM temp
WHERE hobby = '등산'
   OR hobby = '낚시'
   
오라클에서도 제공되는 함수가 있다
함수는 이름뒤에 괄호가 붙어있다
함수는 반드시 반환값이 있다

SELECT round(123.456, 1) FROM dual

round(값,표시할자리수) 위의 경우 소숫점 두번째자리에서 반올림
그룹함수도 제공된다

SELECT sum(salary)||'원'
        ,to_char(sum(salary),'999,999,999')||'원'
        ,sum(salary/12),to_char(sum(salary),'999,999,999')
         FROM temp