SELECT * FROM seojeom.booktable; # 1번 문제 정답 코드 (도서정보의 모든 항목 조회)


SELECT title, price from seojeom.booktable; #책 제목과 도서 가격만 조회  # 2번 문제(책 제목, 도서 가격 조회)

# 아래 두줄은 똑같은 코드임
SELECT * FROM seojeom.booktable where genre = "인문학" || genre = "과학";# 3번 문제 인문학, 과학책만 조회하기
SELECT * FROM seojeom.booktable where genre = "인문학" || genre = "과학";# 3번 문제 인문학, 과학책만 조회하기

# 4번 문제
SELECT * FROM seojeom.booktable where genre = "철학" || genre = "심리학";# 3번 문제 인문학, 과학책만 조회하기


# 5번 문제 : 책 제목에 특정 키워드가 들어가는 것(이것이 라는 키워드_
SELECT * FROM seojeom.booktable where title like "%이것이%";
-- '%이것이%' : 앞뒤에 아무 문자나 다 와도 되고 이것이가 있는 경우
-- '이것이 %' : 앞에 무조건 '이것이' 오고 그 뒤엔 아무 문자나 상관 없음
-- '%이것이' : 뒤에 무조건 '이것이' 오고 그 두ㅣ엔 아무 문자나 상관 없음

# BONUS : 가격이 10000원 미만인 책만 조회하기ㅏ
SELECT * FROM seojeom.booktable where price < 10000;

