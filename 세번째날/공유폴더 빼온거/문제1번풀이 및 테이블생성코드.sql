CREATE TABLE `seojum`.`bookTable` (
  `ISBN` CHAR(10) NOT NULL,
  `author` VARCHAR(20) NOT NULL,
  `title` VARCHAR(20) NOT NULL,
  `genre` VARCHAR(10) NULL,
  `price` INT NOT NULL,
  PRIMARY KEY (`ISBN`));

-- 1번 문제의 정답 코드
select * from bookTable; #ctrl+Enter : 가운데 번개모양(I)







