��������:
�����Ͽ� �ش����ڿ� 01�� �ٿ��� 4�ڸ� ��ȣ�� �����, ȭ���� 11, ������ 21, ����� 31,
�ݿ��� 41, ����� 51, �Ͽ��� 61�� �ٿ��� 4�ڸ� ��ȣ�� ������
������ ��ȣ�� ����ϴ� sql���� �ۼ��Ͻÿ�
���ó�¥ 06��+�����31-> 0631

SELECT '0631' as "todayPW" FROM dual

������� : 

SELECT to_char(sysdate,'day')
        ,to_char(sysdate,'DD')
        ,to_char(sysdate,'YYYY-MM-DD HH:MI:SS AM')
    FROM dual
    
���� Ǯ��� :

SELECT 
        to_char(sysdate,'DD')||
        decode(to_char(sysdate,'day'),'������','01'
        ,'ȭ����','11'
        ,'������','21'
        ,'�����','31'
        ,'�ݿ���','41'
        ,'�����','51'
        ,'�Ͽ���','61')as "todayPW"
   FROM dual
   

        