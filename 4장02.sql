�������� Ǯ�� 
����1 : 

SELECT 
        decode(lec_time,lec_point,'�Ϲݰ���','��Ÿ����')
 FROM lecture
 
����2 :

SELECT 
        count(decode(lec_time,lec_point,lec_id))
 FROM lecture
 
����2 ���2:

SELECT
       count(1) 
 FROM lecture
 WHERE lec_time = lec_point
 
����3 :

decode�� ũ���۴ٴ� ���� ���� �����
�׷��� ������ �ٲ�����ҰͰ��ƿ�
� ������ ����� �� ���� ���� ���̸� �տ� ���ڰ� ���� ���̰� 
���� ���̸� �տ� ���ڰ� ū���̶�� ���� �� �ְ���
�׷��� ���� ������ ���� �������� �Ǻ��� �� �ִ� �Լ��� ������ �ذ��� �� �����Ͱ��ƿ�
���� ���

SELECT sign(500-20), sign(20-500), sign(50-50)
 FROM dual
 
�� ������� ������ Ǯ���, 

SELECT
        decode( sign(lec_time - lec_point),
        1,'�������',
        -1,'��Ÿ����',
        0,'�Ϲݰ���')
   FROM lecture