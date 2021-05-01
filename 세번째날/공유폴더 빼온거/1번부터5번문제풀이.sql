SELECT * FROM seojum.booktable; #1번 문제 정답 코드 (도서정보의 모든 항목 조회)
SELECT title, price FROM seojum.booktable; #책 제목과 도서 가격만 조회 #2번 문제(책 제목, 도서 가격 조회)

-- 아래 두 줄은 똑같은 코드임
SELECT * FROM seojum.booktable where genre = "인문학" OR genre = "과학"; #3번 문제 인문학, 과학책만 조회하기
SELECT * FROM seojum.booktable where genre = "인문학" || genre = "과학"; #3번 문제 인문학, 과학책만 조회하기

#4번 문제
SELECT * FROM seojum.booktable where genre = "철학" OR genre = "심리학"; # || 써도 됨

#5번 문제 : 책 제목에 특정 키워드가 들어가는 것(이것이 라는 키워드가 들어가는 책만 조회)
SELECT * FROM seojum.booktable where title like '이것이%' 
