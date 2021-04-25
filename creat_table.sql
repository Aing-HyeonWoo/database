-- 내가 코드로 직접 테이블 만들어보기
-- 여기서 주의할 점은!!! 테이블을 생성할 데이터베이스를 선택해야 함(즉 드럼통을 선택해야 함!!!)
create table exampleTable ( _id int primary key, name varchar(30) not null);
-- _id는 int 타입 데이터가 들어가고 pk이고, name은 문자열이 들어가며 null을 허용하지 않음

-- 데이터 삽입
insert exampleTable(_id, name) values (1,'이동준'); # 해당 데이터를 추가했다면 _id값을 바꿔야 함
insert exampleTable(_id, name) values (2,'표서윤');
insert exampleTable(_id, name) values (3,'서현우');
insert exampleTable(_id, name) values (4,'김규창');
insert exampleTable(_id, name) values (5,'이제영');

-- 데이터 조회
select * from exampleTable; # 현재 schooldatabase가 선택되어 있으므로 테이블명만 바로 적어도 됨
# 근데 다른 데이터베이스 선택해놓고 테이블명만 적으면 실행 안 됨!
-- select * from schooldatabase.exampleTable; # 내가 사용할 데이터베이스이름.테이블명

use schooldatabase; # use키워는 데이터베이스를 선택해주는 키워드
select * from exampleTable;

-- where
-- like 절 복습
select * from exampleTable where name = '서현우'; #서현우 한 명만 조회
select * from exampleTable where name like '이%'; #이씨인 사람만 조회
select name as 이름 from exampleTable where _id > 3; #_id값이 3을 넘는 사람들의 이름만 조회
 #_id값이 1부터 4사이인 사람들의 이름만 조회
select name as 이름 from exampleTable where _id >= 1 and _id <=4;

