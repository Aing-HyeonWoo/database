
create table book(
	title varchar(20) not null,
	author varchar(20) not null,
    genre varchar(10) not null,
    price Int not null,
    ISBN char(10) primary key
);


insert book(title, author, genre, price, ISBN) values ('헐', '가', '인문학', 20000, '1234567890');
insert book(title, author, genre, price, ISBN) values ('대박', '나', '인문학', 21000, '1121212911');
insert book(title, author, genre, price, ISBN) values ('와', '다', '과학', 22000, '1234567892');
insert book(title, author, genre, price, ISBN) values ('헤엑', '라', '과학', 26510, '1234567893');
insert book(title, author, genre, price, ISBN) values ('허억', '마', '철학', 22780, '1234567894');
insert book(title, author, genre, price, ISBN) values ('히익', '바', '철학', 27890, '1234567895');
insert book(title, author, genre, price, ISBN) values ('이잉', '사', '심리학', 24520, '1234567896');
insert book(title, author, genre, price, ISBN) values ('엥', '아', '심리학', 78520, '1234567897');
insert book(title, author, genre, price, ISBN) values ('허어어어억', '자', '자기계발', 98520, '1234567898');
insert book(title, author, genre, price, ISBN) values ('헤에에ㅔ엑', '차', '자기계발', 45520, '1234567899');

select * from book;

select * from book where genre = '인문학' || '철학';