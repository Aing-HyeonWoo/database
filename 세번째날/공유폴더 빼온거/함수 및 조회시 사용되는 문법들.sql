SELECT * FROM madang.book;
SELECT * FROM madang.customer;
SELECT * FROM madang.orders;

#DISTINCT 중복 제거 
select publisher from book;
select distinct publisher from book; #중복 제거!

#값의 범위 BETWEEN (A 이상 B 이하)
SELECT * FROM BOOK WHERE PRICE BETWEEN 10000 AND 20000;
-- BETWEEN 없이 쓰는 법
SELECT * FROM BOOK WHERE PRICE >= 10000 AND PRICE<=20000;

# IN이랑 NOT IN (집합 키워드)
#출판사가 '굿스포츠' 또는 '대한미디어'인 도서 검색
SELECT * FROM BOOK WHERE publisher IN ('굿스포츠', '대한미디어');
#IN 안 쓰는 법
SELECT * FROM BOOK WHERE publisher = '굿스포츠' OR publisher = '대한미디어';
#NOT IN  (출판사가 굿스포츠나 대한미디어가 '아닌 것')
SELECT * FROM BOOK WHERE publisher NOT IN ('굿스포츠', '대한미디어');

#데이터를 순서대로 정렬하는 방법
#도서를 이름 순으로 정렬하기
SELECT * FROM BOOK ORDER BY BOOKNAME ; # 끝에 DESC를 붙이면 역순, ASC는 순차, 생략하면 ASC가 적용됨

# 도서를 가격순으로 검색하고 가격이 똑같으면 이름순으로 검색하기
# 정렬 기준이 2개 이상일 수 있다
SELECT * FROM BOOK ORDER BY PRICE, BOOKNAME ;

#집계 함수
#SUM : 총합 #AVG:평균 #MIN, MAX : 최소, 최대값
# 고객이 주문한 도서의 총 판매액 구하기
SELECT * FROM ORDERS;
SELECT SUM(SALEPRICE) FROM ORDERS;




#1. 축구에 관련된 도서 중 가격이 20000원 이상인 도서를 검색하시오
# 책 이름에 축구 라는 글자가 포함된 책입니다.
#글자의 앞뒤에는 뭐가 와도 상관없으나(공백도 상관없음) 무조건 축구라는 글자는 포함되어야 함!
SELECT * FROM BOOK WHERE BOOKNAME LIKE '%축구%' AND PRICE >= 20000;
#2. 도서를 가격의 내림차순으로 검색하시고, 가격이 같다면 출판사명으로 오름차순 검색하시오.
SELECT * FROM BOOK ORDER BY PRICE DESC, publisher ASC; 
#3. 축구에 관련된 도서들의 가격 평균을 구하시오.   -> ~와 관련된 : LIKE
SELECT AVG(PRICE) FROM BOOK WHERE BOOKNAME LIKE '%축구%';
#4. 골프에 관한 책 중 가장 비싼 책을 고르시오.    -> LIKE
SELECT BOOKNAME, MAX(PRICE) FROM BOOK WHERE BOOKNAME LIKE '%골프%';

#GROUP BY - 그룹으로 묶는 것!
#고객별로 주문한 도서의 총 수량과 총 판매액
SELECT CUSTID, COUNT(*) AS 도서수량, SUM(SALEPRICE) AS 총액 FROM ORDERS GROUP BY CUSTID;

SELECT * FROM ORDERS;

SELECT * FROM ORDERS GROUP BY CUSTID;






