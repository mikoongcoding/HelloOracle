
SELECT decode(1,1,'T','F') FROM dual

�츮 ȸ�翡 �ٹ��ϴ� ��� �߿��� job�� salesman�� ����� ����?
clerk�� ����� ����? �������� ��Ÿ�� ������ ����ϴ� sql���� �ۼ��Ͻÿ�

SELECT 
    ename, decode(job, 'CLERK', sal)
    ,sum(decode(job,'CLERK',sal))
    ,decode(job, 'SALESMAN', sal)
    sum
FROM emp

������ ���������� salary ǥ��, �������� ������  ǥ�� ����.

SELECT 
    sum(decode(job,'CLERK',sal)) as clerkSUM
    , sum(decode(job, 'SALESMAN',sal,'CLERK',0)) as salesSUM
    ,sum(decode(job,'CLERK',0,'SALESMAN',sal))
FROM emp



SELECT sum(decode(job,'SALESMAN',null,'CLERK',null,sal))
        ,sum(sal)-((sum(decode(job,'CLERK',sal)))+(sum(decode(job,'SALESMAN',sal))))
FROM emp

�ٷ� ���� �ڵ�:���� ��������̴�? ������ �հ迡�� ����, ��������� �ƴϸ� Ȥ�� Ŭ���̴�? ������
�հ迡�� ����, �ƴϸ� �޿��հ� ����. �� ������ǰ� Ŭ���� �޿��� ������ �������� �޿� �հ�.



select * from lecture

����1:�ִ� ���ǽð��� ������ ������ '�Ϲݰ���'�� ��ȯ�ϰ�
�������� '��Ÿ����'�̶�� ����ϴ� sql���� �ۼ��Ͻÿ�.

SELECT decode(lec_time,lec_point,'�Ϲݰ���','��Ÿ����')
 FROM lecture

����2:�ִ� ���ǽð��� ������ ���� ������ ���ڸ� �˰� �ʹ�. �����? decode�� Ǯ��

SELECT decode(lec_time,lec_point,lec_id)
 FROM lecture

����3:lec_time�� ũ�� '�������', lec_point�� ũ�� '��Ÿ����' 
���� ������ '�Ϲݰ���'�� ����ϴ� select���� �ۼ��� ���ÿ�.

SELECT decode( SIGN(( lec_time - lec_point) ),
1, '�������',
0, '�Ϲݰ���',
-1, '��Ÿ����')
 FROM lecture

