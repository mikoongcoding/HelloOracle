/* Formatted on 2020/02/11 ���� 2:32:30 (QP5 v5.215.12089.38647) */
���̵� �����ϴ�? �� 1��ȯ


SELECT member_id
  FROM MEMBER SELECT
 1 FROM member

SELECT emp_name,hobby,NVL(hobby,'����') FROM temp

SELECT member_id,NVL(member_id,'-1')
    FROM member

�ڹٿ��� StringBuilder�� ��� ����Ŭ�� ������ sql��

SELECT
        NVL((SELECT 1 FROM member
        WHERE member_id=:id)
        ,-1) status
  FROM dual



SELECT DECODE((
        nvl((SELECT 1 FROM member
            WHERE member_id=:id)
            ,-1)),1,'���̵� �����մϴ�.','���̵� �������� �ʽ��ϴ�')
    FROM dual

�Է��� ���̵� ������ 1, ������ -1


if() {
    if() {
        return 2;
    }ELSE {
        RETURN 0;
    }
}ELSE {
    RETURN -1;
}
-1�̸� ���̵� �������� �ʽ��ϴ�.
1�̸� ���̵� �����մϴ�.
0�̸� ����� Ʋ���ϴ�.
2�̸� '�̼���'�� ȯ���մϴ�. (id�� pw�� ��� ��ġ�Ͽ� name��ȯ)

SELECT DECODE ( (NVL ( (SELECT 1
                          FROM MEMBER
                         WHERE member_id = :id),
                      -1)),
               1, '���̵� �����մϴ�.',
               '���̵� �������� �ʽ��ϴ�')
  FROM DUAL 

SELECT
 DECODE((
        nvl((SELECT 1 FROM member
            WHERE member_id=:id)
            ,-1)),1,'���̵� �����մϴ�.','���̵� �������� �ʽ��ϴ�')
    FROM dual

SELECT
        NVL((SELECT member_name
        FROM member
        WHERE member_id=:id
        AND member_pw=:pw),0) NAME
   FROM dual



SELECT NVL ( (SELECT 1
                FROM MEMBER
               WHERE member_id = :id),
            -1)
          status
  FROM DUAL


SELECT * FROM baseball

/* Formatted on 2020/02/11 ���� 2:32:41 (QP5 v5.215.12089.38647) */
SELECT NVL (hobby, 'no') FROM temp

����� �����Լ� - ���� ���� �Լ��� �Ķ������ ������ �����Ҽ��ִ�
����Ŭ �����Ǵ� �Լ� - �Ķ������ ������ ������ �Ұ��ϴ� 

SELECT NVL('�ȳ�','null�϶�') FROM dual

NVL�Լ��� �ش� �÷��� �ִ� null�� üũ�ؼ� ���� �ƴϸ� �ش簪�� ��ȯ, null�̸� �ι�° �Ķ���͸� ��ȯ