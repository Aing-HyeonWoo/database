use employees; #DB 선택하기(USE)
use hakgyo;
select * from student;
select * from hakgwa;

delete from hakgwa; #hakgwa 테이블에 있는 데이터를 싹 다 날리는 구문
-- 끝에 where 절을 붙이면 내가 지정한 것만 삭제할 수 있음


# 학과 테이블에 존재하지도 않는 학과코드를 갖는 학생 추가는 불가능!!!
# 777 이라는 학과가 존재하지 않기 때문에 추가할 수 없다!!!
insert into student (`hakbeon`, `name`, `age`, `hakgwacode`) values ('2007777123', '이제영', '34', '777');
#  ` : 그레이브 (esc 바로 아래 있는 키)

UPDATE `hakgyo`.`hakgwa` SET `hakgwaName` = '컴퓨터학부' WHERE (`hakgwacode` = '038');
UPDATE `hakgyo`.`hakgwa` SET `hakgwaName` = '전자공학부' WHERE (`hakgwacode` = '813');

#where 절을 깜빡한 경우!!
#테이블의 모든 값이 다 바뀔 수 있으니 각별한 주의를 바란다!
# 테이블의 모든  hakgwaName을 다 자율전공으로 바꿔버림 ㅠㅠ
UPDATE `hakgyo`.`hakgwa` SET `hakgwaName` = '자율전공';

UPDATE `hakgyo`.`hakgwa` SET `hakgwaName` = '컴퓨터학부' WHERE (`hakgwacode` = '038');
UPDATE `hakgyo`.`hakgwa` SET `hakgwaName` = '전자공학부' WHERE (`hakgwacode` = '813');
UPDATE `hakgyo`.`hakgwa` SET `hakgwaName` = '심리학과' WHERE (`hakgwacode` = '123');

SELECT * FROM HAKGWA;

SELECT * FROM STUDENT;

DELETE FROM STUDENT; #STUDENT 테이블에 있는 데이터를 싹 다 지운다 ㅜㅜ

DELETE FROM STUDENT WHERE HAKBEON='1999038033'; #내가 선택한 데이터만 지운다 


