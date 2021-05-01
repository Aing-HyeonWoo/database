SELECT * FROM madang.book;
SELECT * FROM madang.orders;
SELECT * FROM madang.customer;
# 상황에 따라 컬럼명 생략 가능
INSERT INTO Book VALUES(1, '축구의 역사', '굿스포츠', 7000);
INSERT INTO Book VALUES(2, '축구아는 여자', '나무수', 13000);
INSERT INTO Book VALUES(3, '축구의 이해', '대한미디어', 22000);
INSERT INTO Book VALUES(4, '골프 바이블', '대한미디어', 35000);
INSERT INTO Book VALUES(5, '피겨 교본', '굿스포츠', 8000);
INSERT INTO Book VALUES(6, '역도 단계별기술', '굿스포츠', 6000);
INSERT INTO Book VALUES(7, '야구의 추억', '이상미디어', 20000);
INSERT INTO Book VALUES(8, '야구를 부탁해', '이상미디어', 13000);
INSERT INTO Book VALUES(9, '올림픽 이야기', '삼성당', 7500);
INSERT INTO Book VALUES(10, 'Olympic Champions', 'Pearson', 13000);

INSERT INTO Customer VALUES (1, '박지성', '영국 맨체스타', '000-5000-0001');
INSERT INTO Customer VALUES (2, '김연아', '대한민국 서울', '000-6000-0001');  
INSERT INTO Customer VALUES (3, '장미란', '대한민국 강원도', '000-7000-0001');
INSERT INTO Customer VALUES (4, '추신수', '미국 클리블랜드', '000-8000-0001');
INSERT INTO Customer VALUES (5, '박세리', '대한민국 대전',  NULL);

# STR_TO_DATE
# 문자열을 DATETIME형 데이터로 변경

INSERT INTO Orders VALUES (1, 1, 1, 6000, STR_TO_DATE('2014-07-01','%Y-%m-%d')); 
INSERT INTO Orders VALUES (2, 1, 3, 21000, STR_TO_DATE('2014-07-03','%Y-%m-%d'));
INSERT INTO Orders VALUES (3, 2, 5, 8000, STR_TO_DATE('2014-07-03','%Y-%m-%d')); 
INSERT INTO Orders VALUES (4, 3, 6, 6000, STR_TO_DATE('2014-07-04','%Y-%m-%d')); 
INSERT INTO Orders VALUES (5, 4, 7, 20000, STR_TO_DATE('2014-07-05','%Y-%m-%d'));
INSERT INTO Orders VALUES (6, 1, 2, 12000, STR_TO_DATE('2014-07-07','%Y-%m-%d'));
INSERT INTO Orders VALUES (7, 4, 8, 13000, STR_TO_DATE( '2014-07-07','%Y-%m-%d'));
INSERT INTO Orders VALUES (8, 3, 10, 12000, STR_TO_DATE('2014-07-08','%Y-%m-%d')); 
INSERT INTO Orders VALUES (9, 2, 10, 7000, STR_TO_DATE('2014-07-09','%Y-%m-%d')); 
INSERT INTO Orders VALUES (10, 3, 8, 13000, STR_TO_DATE('2014-07-10','%Y-%m-%d'));


# DISTINCT 중복 제거
select publisher from book;
select distinct publisher from book; # 중복제거!

# 값의 범위 BETWEEN (A 이상 B 이하)
SELECT * FROM BOOK WHERE PRICE BETWEEN 10000 AND 20000;
-- BETWEEN 없이 쓰는 법
SELECT * FROM BOOK WHERE PRICE >= 10000 AND PRICE <=20000;

# IN이랑 NOT IN (집합 키워드)
# 출판사가 '굿스포츠' 또는 '대한미디어'인 도서 검색
SELECT * FROM BOOK WHERE publisher IN ('굿스포츠', '대한미디어');
# IN 없는 거
SELECT * FROM BOOK WHERE publisher ='굿스포츠' OR publisher = '대한미디어';

# NOT IN (출판사가 굿스포츠나 대한미디어가 '아닌 것')
SELECT * FROM BOOK WHERE publisher  NOT IN ('굿스포츠', '대한미디어');

# 데이터를 순서대로 정렬하는 방법
# 도서를 이름 순으로 정렬하기
SELECT * FROM BOOK ORDER BY BOOKNAME; # 끝에 DESC를 붙이면 역순, ASC는 순차, 생략하면 ASC가 적용됨

# 도서를 가격순으로 검색하고 가격이 똑같으면 이름순으로 검색하기
# 정렬 기준이 2개 이상일 수 있다
SELECT * FROM BOOK ORDER BY PRICE, BOOKNAME;

# 집계 함수
# SUM : 총합 
# AVG : 평균
# MIN, MAX : 최소값, 최대값
# 고객이 주문한 도서의 총 판매액 구하기
SELECT SUM(SALEPRICE) FROM ORDERS; 

