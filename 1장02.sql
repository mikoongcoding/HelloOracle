--����Ŭ�ǽ��ҽ� 1��
SELECT
       salary/18, salary*2/18
    FROM temp
  
SELECT
       to_char(round(salary/18,-1),'999,999,999')||'��' as "Ȧ���޿�"
       , round(salary*2/18,-1) as "¦���޿�"
    FROM temp
  
SELECT 1||'��', '$'||100 FROM temp

SELECT to_char(123456789,'999,999,999') FROM temp

SELECT round(123.567,2),round(123.567,2)
        ,round(123.567,0),round(123.567,-1) --�Ҽ� ����°���� �ݿø�
    FROM dual
    
Temp�ڷ� �� hobby�� ����� ����� �̸��� ��̸� ����ϴ� sql���� �ۼ��Ͻÿ�.

SELECT emp_name "�̸�", hobby "���"    
   FROM temp
WHERE hobby = '���'
   OR hobby = '����'
   
����Ŭ������ �����Ǵ� �Լ��� �ִ�
�Լ��� �̸��ڿ� ��ȣ�� �پ��ִ�
�Լ��� �ݵ�� ��ȯ���� �ִ�

SELECT round(123.456, 1) FROM dual

round(��,ǥ�����ڸ���) ���� ��� �Ҽ��� �ι�°�ڸ����� �ݿø�
�׷��Լ��� �����ȴ�

SELECT sum(salary)||'��'
        ,to_char(sum(salary),'999,999,999')||'��'
        ,sum(salary/12),to_char(sum(salary),'999,999,999')
         FROM temp