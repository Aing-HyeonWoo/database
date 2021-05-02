# JOIN
# 두 개의 테이블을 합치는 작업

# 무식하게 합쳐보기
SELECT * FROM BOOK; # 길이 10
SELECT * FROM CUSTOMER; # 길이 5
SELECT * FROM ORDERS; # 길이 10

# 그냥 단순하게 두개의 테이블을 그냥 이어붙인거임
SELECT * FROM CUSTOMER, ORDERS; # 길이 50

# 고객과 고객의 주문에 관한 데이터를 모두 보이시오!
SELECT * FROM CUSTOMER, ORDERS WHERE CUSTOMER.CUSTID = ORDERS.CUSTID;

# 문제
# 고객과 고객의 주문에 관한 데이터를 고객변호 순으로 정렬하되, 역순으로 정렬해 주세요.
SELECT * FROM CUSTOMER, ORDERS WHERE CUSTOMER.CUSTID = ORDERS.CUSTID ORDER BY ORDERS.CUSTID DESC;

# 고객의 이름순 정렬하기
SELECT * FROM CUSTOMER, ORDERS WHERE CUSTOMER.CUSTID = ORDERS.CUSTID ORDER BY CUSTOMER.NAME;

# 고객별 총 판매액을 출력해 주세요(두개의 테이블 합치기 = 조인)
SELECT NAME, SUM(SALEPRICE) FROM CUSTOMER, ORDERS WHERE CUSTOMER.CUSTID = ORDERS.CUSTID GROUP BY CUSTOMER.NAME;

 # 테이블명을 줄일수 있음
 # 여기서 주의할 점은! 키워드랑 겹치는 이름을 지정하면 안됨(예를 들어서 ORDERS AS ORDER 이런거 ㅇ나됨)
 # 여기서 키워드란 ORDER, SELECT 처럼 이미 MYSQL 상에서 지정된 단어들을 의미합니다.
SELECT NAME AS 고객명, SUM(SALEPRICE) AS 총액 FROM CUSTOMER AS CS, ORDERS AS OS WHERE CS.CUSTID = OS.CUSTID GROUP BY CS.NAME;
# 테이블 명칭을 as를 통해서 변경하면 그 변경된 명칭을 써야한다

# 조인을 하는 또 다른 방법(WHERE절 대신에 사용함)
## 두개의 테이블 사이에 콤마(,) 대신에 JOIN 넣고, WHERE 대신에 ON을 넣는다.
SELECT NAME AS 고객명, SUM(SALEPRICE) AS 총액 FROM CUSTOMER AS CS JOIN ORDERS AS OS ON CS.CUSTID = OS.CUSTID GROUP BY CS.NAME; 
