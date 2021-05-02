# JOIN 공부 더하기

SELECT * FROM myschool.hakgwatable;
# 038, 123, 385, 813

use myschool;

INSERT INTO `myschool`.`student` (`hakbeon`, `name`, `age`, `HakGwaCode`, `hakjeom`, `phoneNum`) VALUES ('20080730', '우왕', '1', '123', '4.50', '010-8989-7878');
INSERT INTO `myschool`.`student` (`hakbeon`, `name`, `age`, `HakGwaCode`, `hakjeom`, `phoneNum`) VALUES ('19720650', 'ㄷㄷ', '89', '813', '1.25', '010-2424-5050');
INSERT INTO `myschool`.`student` (`hakbeon`, `name`, `age`, `HakGwaCode`, `hakjeom`, `phoneNum`) VALUES ('10520925', '헐', '1000', '038', '3.05', '011-8975-2345');
INSERT INTO `myschool`.`student` (`hakbeon`, `name`, `age`, `HakGwaCode`, `hakjeom`, `phoneNum`) VALUES ('20770106', '최준', '5', '813', '5.00', '010-7777-7777');
INSERT INTO `myschool`.`student` (`hakbeon`, `name`, `age`, `HakGwaCode`, `hakjeom`, `phoneNum`) VALUES ('30780425', 'ㅋㅋ', '50', '385', '3.54', '020-4567-1234');
INSERT INTO `myschool`.`student` (`hakbeon`, `name`, `age`, `HakGwaCode`, `hakjeom`, `phoneNum`) VALUES ('20210502', '이호창', '45', '038', '4.99', '010-7895-7256');
INSERT INTO `myschool`.`student` (`hakbeon`, `name`, `age`, `HakGwaCode`, `hakjeom`, `phoneNum`) VALUES ('1969', '이택조', '52', '813', '1.02', '011-8133-7895');
INSERT INTO `myschool`.`student` (`hakbeon`, `name`, `age`, `HakGwaCode`, `hakjeom`, `phoneNum`) VALUES ('20080730', '하', '6', '385', '3.50', '010-4564-9212');
INSERT INTO `myschool`.`student` (`hakbeon`, `name`, `age`, `HakGwaCode`, `hakjeom`, `phoneNum`) VALUES ('31231212', '아이고', '8', '038', '5.00', '010-5644-7897');

select * from student;

# join!
# 학과테이블과 학생테이블을 조인해보자
select * from student, hakgwatable where student.Hakgwacode = hakgwatable.code;
select hakbeon, student.name, hakgwatable.name from student, hakgwatable where student.Hakgwacode = hakgwatable.code;

# join 키워드 사용해서 join하기
# 콤마 대신 join 적고 where 대신에 on 적으면 끝!
select hakbeon, student.name, hakgwatable.name from student join hakgwatable on student.Hakgwacode = hakgwatable.code;

select AVG(STUDENT.HAKJEOM), HAKGWATABLE.NAME from student join hakgwatable on student.Hakgwacode = hakgwatable.code GROUP BY STUDENT.HAKGWACODE;

# 평점이 3.0 미만인 학과를 출력하시오.(학과 이름만 출력하면 됨)
select AVG(STUDENT.HAKJEOM) as "'그'  숫자", HAKGWATABLE.NAME as '3.0미만 나오는 공부 못하는 과ㅠㅠㅠㅠ' from student join hakgwatable on student.Hakgwacode = hakgwatable.code GROUP BY STUDENT.HAKGWACODE having AVG(student.hakjeom) < 3.0;

# 우리가 여태 배운 건 INNER JOIN
# 익 ㅓ말고도
# LEFT OUTER JOIN, RIGHT OUTERJOIN, SELF 조인이 있따아아아ㅏ아아아ㅏㅇ아아아아ㅏ아아아ㅏ아아ㅏ



