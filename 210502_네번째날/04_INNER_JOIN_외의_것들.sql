# 다시 새로운 데이터들을 만들어 봅시다!

CREATE SCHEMA SONG_AND_SING;
USE SONG_AND_SING;

CREATE TABLE GIRL_GROUP
(
	_ID INT PRIMARY KEY AUTO_INCREMENT, # AUTO_INCREMENT 데이터가 추가되면 자동으로 숫자가 증가되는 것
    NAME VARCHAR(32) NOT NULL,
    DEBUT DATE NOT NULL,
    HIT_SONG_ID INT
);

CREATE TABLE SONG
(
	_ID INT PRIMARY KEY AUTO_INCREMENT, # AUTO_INCREMENT 데이터가 추가되면 자동으로 숫자가 증가되는 것 
    TITLE VARCHAR(32) NOT NULL,
    LYRICS VARCHAR(45) NOT NULL
);

# 수행하고자 하는 쿼리들을 드래그한 뒤 왼쪽 번개 누르면 한 꺼번에 실행됨
# GIRL_GROUP의 _ID는 숫자가 101부터 시작하도록 세팅도미
# 제일 첫번째 데이터 넣을 때 _ID 값을 지정해주면 그 값부터 하나씩 순차적으로 증가합니다
# 장점 : 숫자가 알아서 증가하니까 내가 일일히 입력해주지 않아도 된다.
# 단점 : 중간에 있는 것(예를 들어서 미스터)을 지우면 숫자가 알아서 안 바뀜. 그거에 대한 별도의 예외처리 필요.
# 그래서 그냥 안 쓰는 경우도 많음. 혹은 중간에 번호가 누락이 되어도 상관이 없는 경우에 씀
# 혹은 번호는 번호대로 그대로 두고 상태를 '탈퇴', '삭제됨' 등으로 둔다.
INSERT INTO song (_id, title, lyrics) VALUES (101, 'Tell Me', 'tell me tell me tetetete tel me'); 
INSERT INTO song (title, lyrics) VALUES ('Gee', 'GEE GEE GEE GEE GEE BABY BABY'); 
INSERT INTO song (title, lyrics) VALUES ('미스터', '이름이 뭐야 미스터'); 
INSERT INTO song (title, lyrics) VALUES ('Abracadabra', '이러다 미쳐 내가 여리여리'); 
INSERT INTO song (title, lyrics) VALUES ('8282', 'Give me a call Baby baby'); 
INSERT INTO song (title, lyrics) VALUES ('기대해', '기대해'); 
INSERT INTO song (title, lyrics) VALUES ('I Don\'t car', '다른 여자들의 다리를'); 
INSERT INTO song (title, lyrics) VALUES ('Bad Girl Good Girl', '앞에선 한 마디 말도'); 
INSERT INTO song (title, lyrics) VALUES ('피노키오', '뉴예삐오'); 
INSERT INTO song (title, lyrics) VALUES ('별빛달빛', '너는 내 별빛 내 마음의 별빛'); 
INSERT INTO song (title, lyrics) VALUES ('A', 'A 워오우 워오우워 우우우'); 
INSERT INTO song (title, lyrics) VALUES ('나혼자', '나 혼자 밥을 먹고 나 혼자 영화 보고'); 
INSERT INTO song (title, lyrics) VALUES ('LUV', '설레이나요 '); 
INSERT INTO song (title, lyrics) VALUES ('짧은치마', '짧은 치마를 입고 내가 길을 걸으면');
INSERT INTO song (title, lyrics) VALUES ('위아래', '위 아래 위위 아래'); 
INSERT INTO song (title, lyrics) VALUES ('Dumb Dumb' , '너 땜에 하루종일'); 


INSERT INTO girl_group (name, debut, hit_song_id) VALUES ('원더걸스', '2007-09-12', 101); 
INSERT INTO girl_group (name, debut, hit_song_id) VALUES ('소녀시대', '2009-06-03', 102); 
INSERT INTO girl_group (name, debut, hit_song_id) VALUES ('카라', '2009-07-30', 103); 
INSERT INTO girl_group (name, debut, hit_song_id) VALUES ('브라운아이드걸스', '2008-01-17', 104); 
INSERT INTO girl_group (name, debut, hit_song_id) VALUES ('다비치', '2009-02-27', 105); 
INSERT INTO girl_group (name, debut, hit_song_id) VALUES ('2NE1', '2009-07-08', 107); 
INSERT INTO girl_group (name, debut, hit_song_id) VALUES ('f(x)', '2011-04-20', 109); 
INSERT INTO girl_group (name, debut, hit_song_id) VALUES ('시크릿', '2011-01-06', 110); 
INSERT INTO girl_group (name, debut, hit_song_id) VALUES ('레인보우', '2010-08-12', 111); 
INSERT INTO girl_group (name, debut) VALUES ('에프터 스쿨', '2009-11-25'); 
INSERT INTO girl_group (name, debut) VALUES ('포미닛', '2009-08-28');

SELECT * FROM GIRL_GROUP;
SELECT * FROM SONG;

# 교집합 : 두 개의 테이블엣 ㅓ겹치는 부분만 출력
# INNER JOIN 복습
SELECT S._ID, S.TITLE, GG.NAME FROM SONG AS S JOIN GIRL_GROUP AS GG ON S._ID = GG.HIT_SONG_ID;


# LEFT OUTER JOIN
# 첫번째 테이블에 있는 데이터는 다 출력하고, 두번째 테이블에 있는 건, 첫번째 있는 거랑 겹치는 거
# 모든 걸그룹을 출력하시오! 히트송이 없는 애들도 다 출력 하세요
SELECT S._ID, S.TITLE, GG.NAME FROM SONG AS S LEFT JOIN GIRL_GROUP AS GG ON S._ID = GG.HIT_SONG_ID;



# RIGHT OUTER JOIN
# LEFT OUTER JOIN의 반ㄷㅇ애
# 노래들을 전부 다 출력하고, 해당 가수가 노래가 없ㅇ어도 다 출력
SELECT S._ID, S.TITLE, GG.NAME FROM SONG AS S RIGHT JOIN GIRL_GROUP AS GG ON S._ID = GG.HIT_SONG_ID;

# SELF 조인
# 한 개의 테이블을 가지고 서로 조인하는 것


