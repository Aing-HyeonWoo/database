use hakgyo;
select * from hakgwa;
select * from student;
delete from hakgwa; #hakgwa 테이블에 있는 데이터를 싹 다 날리는 구문
-- 끝에 where 절을 붙이먼 내가 지정한 것만 삭제할 수 있음

#학과 테이블에 존재하지도 않는 학과코드를 갅는 학생은 추가 불가능
insert into student(`hakbeon`, `name`, `age`, `hakgwacode`) values('2007777123', '이제영', '34',  813);
#                 ` : 그레이브 (esc 바로 아래 있는 키)
UPDATE `hakgyo`.`hakgwa` SET `hakgwaName` = "컴퓨터학부" where (`hakgwacode` = '038');
UPDATE `hakgyo`.`hakgwa` SET `hakgwaName` = "전자공학부" where (`hakgwacode` = '813');

select * from hakgwa;

select * from Hakgwa;
select * from student;
delete from student where hakbeon = '1999038033'; 