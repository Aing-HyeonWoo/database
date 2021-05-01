# 1. 축구에 관련된 도서 중 가격이 20000원 이상인 도서를 검색하시오
SELECT * FROM madang.book where BOOKNAME like "%축구%" && price >= 20000;

# 2. 도서를 가격의 내림차순으로 검색하시고, 가격이 같다면 출판사명으로 오름차순 검색하시오.
SELECT * FROM BOOK ORDER BY price DESC, publisher ASC;

# 3. 축구에 관련된 도서들의 가격 평균을 구하시오
SELECT AVG(price) FROM BOOK WHERE BOOKNAME like "%축구%";

# 4. 골프에 관한 책 중 가장 비싼 책을 고르시오.
SELECT BOOKNAME, max(price) FROM book where BOOKNAME LIKE "%골프%";

# GROUP BY - 그룹으로 묶는 것!
# 고객별로 주문한 도서의 총 수량과 총 판매액
SELECT CUSTID, COUNT(*) AS 도서수량, SUM(SALEPRICE) AS 총액 FROM ORDERS GROUP BY CUSTID;

SELECT * FROM ORDERS;