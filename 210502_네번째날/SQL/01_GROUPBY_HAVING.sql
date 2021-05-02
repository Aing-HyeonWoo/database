use madang;

SELECT * FROM ORDERS ORDER BY CUSTID; # CUSTID를 기준으로 정렬

# 고객별로 주문한 도서의 총 수량과 총 판매액
SELECT CUSTID, COUNT(*) AS 도서수량, SUM(SALEPRICE) AS 총액 FROM ORDERS GROUP BY CUSTID;

SELECT * FROM ORDERS GROUP BY CUSTID; # 집계함수(SUM이나 COUNT같은) 없이 사용하면 데이터가 뭉개짐

# 고객이 주문한 도서의 총 판매액
SELECT SUM(SALEPRICE) FROM ORDERS; # 단순하게 총 판매액만 계산할 수 있음

# HAVING # GROUP BY 계의 WHERE 절이라고 보면 됨
# EX) 가격이 8000이상인 도서를 구매한 고객에 대하여, 고객별 주문 도서의 총 수량을 구하시오.
# 근데 두 권 이상 구매한 고객만 구해야 한다(HAVING)

# 여기까지 적으면 , 주문가격이 8000원 이상인 고객들의 총 도서수량만 나와용.
SELECT CUSTID, COUNT(*) AS 도서수량 FROM ORDERS WHERE SALEPRICE >= 8000 GROUP BY CUSTID;

# 8000원 이상 구매한 고객만 나타냄
SELECT CUSTID, SALEPRICE FROM ORDERS WHERE SALEPRICE >= 8000;
# 도서수량이 2권 이상인 고객만 나타내고 싶다아아아ㅏ아아
SELECT CUSTID, COUNT(*) AS 도서수량 FROM ORDERS WHERE SALEPRICE >= 8000 GROUP BY CUSTID HAVING COUNT(*) >= 2;

# 주문 관리 테이블
SELECT * FROM ORDERS ORDER BY CUSTIID;

# 이 중에서 주문 가격이 8000원 이상인 것만 조회합니다
SELECT * FROM ORDERS WHERE SALEPRICE >= 8000;

# 고객별(CUSTID별) 도서 수량 조회
SELECT CUSTID, COUNT(*) AS 도서수량 FROM ORDERS WHERE SALEPRICE >= 8000 GROUP BY CUSTID;