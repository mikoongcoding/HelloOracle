�׷��Լ�

�츮 ȸ�翡 �ٹ��ϴ� ���[�����̸�]�� �� ���ΰ���? count()
ī��Ʈ �Լ� ��ȣ �ȿ� �÷���
���� �׷��� �׷��Լ��� �ƴմϴ� : ����Ŭ�� select���� �����ؾ��� 

SELECT count(*),count(comm),avg(sal),max(sal),min(sal)
  FROM emp
  
SELECT sal FROM emp

ī��Ʈ�Լ� null���� ������� �ʳ�
�׷��Լ��� �׷��Լ��� ���� �÷��� ���� �� �� ����
�׷��Լ��� ����ϸ� ����� �׻� 1���� �ο��̴�.
�ο�� �����ִ� �������̴�
�÷������� ���� �ٸ� ����� �޿�, �μ�Ƽ��, �Ի����ڰ� �ȴ�.
�÷��� �ڹ��� ������ ����� �� ����

�μ��� �޿��� ���� ���ϰ� ���� �� �����?

SELECT distinct(deptno) FROM emp

SELECT sum(sal) FROM emp
GROUP BY deptno
�׷��Լ��� ���� ��� �Ϲ��÷��� ���� ����� �� �����.
�� �׷�������� ���� �÷��� ���� ����� �����ؿ�.

SELECT sum(sal), min(deptno) FROM emp

deptno�� �̴ϸر׷��Լ��� ������ �������� ������ �ذ�������
�� ���� �ǹ� ����