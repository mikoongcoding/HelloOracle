그룹함수

우리 회사에 근무하는 사원[집합이름]은 몇 명인가요? count()
카운트 함수 괄호 안에 컬럼명
단일 그룹의 그룹함수가 아닙니다 : 오라클의 select문을 수정해야함 

SELECT count(*),count(comm),avg(sal),max(sal),min(sal)
  FROM emp
  
SELECT sal FROM emp

카운트함수 null값은 계산하지 않네
그룹함수는 그룹함수가 없는 컬럼과 같이 쓸 수 없다
그룹함수를 사용하면 결과는 항상 1개의 로우이다.
로우는 관련있는 정보들이다
컬럼방향은 서로 다른 사람의 급여, 인센티브, 입사일자가 된다.
컬럼은 자바의 변수와 비슷한 것 같다

부서별 급여의 합을 구하고 싶을 땐 어떡하지?

SELECT distinct(deptno) FROM emp

SELECT sum(sal) FROM emp
GROUP BY deptno
그룹함수가 사용된 경우 일반컬럼은 같이 사용할 수 없어요.
단 그룹바이절에 사용된 컬럼은 같이 사용이 가능해요.

SELECT sum(sal), min(deptno) FROM emp

deptno에 미니멈그룹함수를 씌워서 문법적인 문제는 해결했지만
그 값은 의미 없음