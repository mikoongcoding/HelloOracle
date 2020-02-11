선생님의 풀이 
문제1 : 

SELECT 
        decode(lec_time,lec_point,'일반과목','기타과목')
 FROM lecture
 
문제2 :

SELECT 
        count(decode(lec_time,lec_point,lec_id))
 FROM lecture
 
문제2 방법2:

SELECT
       count(1) 
 FROM lecture
 WHERE lec_time = lec_point
 
문제3 :

decode는 크다작다는 비교할 수가 없대요
그래서 생각을 바꿔봐야할것같아용
어떤 수에서 어떤수를 뺀 값이 음의 값이면 앞에 숫자가 작은 것이고 
양의 값이면 앞에 숫자가 큰값이라고 말할 수 있겠죠
그러면 양의 값인지 음의 값인지를 판별할 수 있는 함수가 있으면 해결할 수 있을것같아요
예를 들어

SELECT sign(500-20), sign(20-500), sign(50-50)
 FROM dual
 
위 방법으로 문제를 풀어보면, 

SELECT
        decode( sign(lec_time - lec_point),
        1,'실험과목',
        -1,'기타과목',
        0,'일반과목')
   FROM lecture