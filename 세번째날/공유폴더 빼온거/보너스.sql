-- Bonus : 가격이 10000원 미만인 책만 조회하기
select * from seojum.bookTable where price < 10000;  # 한 줄일 경우에는 세미콜론이 없어도 되지만!!!!!
-- Bonus : 가격이 10000원 넘는 책만 조회하기
select * from seojum.bookTable where price > 10000;  # 두 줄 이상일 경우에는 반드시 세미콜론이 필요함!!!