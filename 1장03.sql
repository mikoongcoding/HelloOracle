SELECT * FROM t_letitbe

SELECT count(emp_name) FROM temp

SELECT address as "주소", zipcode as "우편번호"
FROM zipcode_t
WHERE dong LIKE '%'||'당산동'||'%'