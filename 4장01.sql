
SELECT decode(1,1,'T','F') FROM dual

우리 회사에 근무하는 사원 중에서 job이 salesman인 사람의 수는?
clerk인 사람의 수는? 나머지는 기타의 합으로 출력하는 sql문을 작성하시오

SELECT 
    ename, decode(job, 'CLERK', sal)
    ,sum(decode(job,'CLERK',sal))
    ,decode(job, 'SALESMAN', sal)
    sum
FROM emp

조건을 만족했을때 salary 표시, 만족하지 않으면  표시 안함.

SELECT 
    sum(decode(job,'CLERK',sal)) as clerkSUM
    , sum(decode(job, 'SALESMAN',sal,'CLERK',0)) as salesSUM
    ,sum(decode(job,'CLERK',0,'SALESMAN',sal))
FROM emp



SELECT sum(decode(job,'SALESMAN',null,'CLERK',null,sal))
        ,sum(sal)-((sum(decode(job,'CLERK',sal)))+(sum(decode(job,'SALESMAN',sal))))
FROM emp

바로 위의 코드:잡이 세일즈맨이니? 맞으면 합계에서 제외, 세일즈맨이 아니면 혹시 클럭이니? 맞으면
합계에서 제외, 아니면 급여합계 구함. 즉 세일즈맨과 클럭의 급여를 제외한 나머지의 급여 합계.



select * from lecture

문제1:주당 강의시간과 학점이 같으면 '일반과목'을 반환하고
나머지는 '기타과목'이라고 출력하는 sql문을 작성하시오.

SELECT decode(lec_time,lec_point,'일반과목','기타과목')
 FROM lecture

문제2:주당 강의시간과 학점이 같은 강의의 숫자를 알고 싶다. 어떡하지? decode로 풀기

SELECT decode(lec_time,lec_point,lec_id)
 FROM lecture

문제3:lec_time이 크면 '실험과목', lec_point가 크면 '기타과목' 
둘이 같으면 '일반과목'을 출력하는 select문을 작성해 보시오.

SELECT decode( SIGN(( lec_time - lec_point) ),
1, '실험과목',
0, '일반과목',
-1, '기타과목')
 FROM lecture

