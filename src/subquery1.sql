create database books;


create table publisher (
                           id serial primary key ,
                           name varchar
);

alter table publisher rename to publishers;
drop table publisher;

create type gender as enum ('Male','Female');

create table author (
                        id serial primary key ,
                        first_name varchar,
                        last_name varchar,
                        email varchar,
                        date_of_birth date,
                        country varchar,
                        Gender gender
);

alter table author rename to authors;

create table language (
                          id serial primary key ,
                          language varchar
);

alter table language rename to languages;

create type genre as enum ('Detective','Drama','History','Romance','Biography','Fantasy');

create table books (
                       id serial primary key ,
                       name varchar,
                       country varchar,
                       published_year date,
                       price numeric,
                       Genre genre

);

-- DDL
alter table author add constraint email unique (email);
alter table language alter column language set not null ;

alter table books add language_id int references language(id);
alter table books add publisher_id int references publisher(id);
alter table books add author_id int references author(id);


insert into publishers(name)
values ('RELX Group'),
       ('Thomson Reuters'),
       ('Holtzbrinck Publishing Group'),
       ('Shanghai Jiao Tong University Press'),
       ('Wolters Kluwer'),
       ('Hachette Livre'),
       ('Aufbau-Verlag'),
       ('Macmillan'),
       ('Harper Collins'),
       ('China Publishing Group'),
       ('Springer Nature'),
       ('Grupo Planeta'),
       ('Books.Ru Ltd.St Petersburg'),
       ('The Moscow Times'),
       ('Zhonghua Book Company');
insert into authors(first_name, last_name, email, date_of_birth, country, gender)
values
    ('Sybilla', 'Toderbrugge', 'stoderbrugge0@jugem.jp', '1968-09-25', 'France', 'Female'),
    ('Patti', 'Walster', 'pwalster1@addtoany.com', '1965-10-31', 'China', 'Female'),
    ('Sonnie', 'Emmens', 'semmens2@upenn.edu', '1980-05-16', 'Germany', 'Male'),
    ('Brand', 'Burel', 'bburel3@ovh.net', '1964-04-24', 'United States', 'Male'),
    ('Silvan', 'Smartman', 'ssmartman4@spiegel.de', '1967-07-03', 'France', 'Male'),
    ('Alexey', 'Arnov', 'larnoldi5@writer.com', '1964-12-29', 'Russia', 'Male'),
    ('Bunni', 'Aggio', 'baggio6@yahoo.co.jp', '1983-12-14', 'China', 'Female'),
    ('Viole', 'Sarath', 'vsarath7@elegantthemes.com', '1960-01-29', 'United States', 'Female'),
    ('Boigie', 'Etridge', 'betridge8@ed.gov', '1978-11-17', 'France', 'Male'),
    ('Hilliard', 'Burnsyde', 'hburnsyde9@omniture.com', '1962-09-08', 'Germany', 'Male'),
    ('Margarita', 'Bartova', 'mbartova@example.com', '1984-12-03', 'Russia', 'Female'),
    ('Innis', 'Hugh', 'ihughb@marriott.com', '1983-08-28', 'Germany', 'Male'),
    ('Lera', 'Trimnella', 'ltrimnellc@msn.com', '1980-03-28', 'Russia', 'Female'),
    ('Jakob', 'Bransby', 'jbransbyd@nasa.gov', '1966-08-05', 'Spain', 'Male'),
    ('Loretta', 'Gronaver', 'lgronavere@technorati.com', '1962-10-17', 'United States', 'Female');
insert into languages(language)
values ('English'),
       ('French'),
       ('German'),
       ('Chinese'),
       ('Russian'),
       ('Spanish');

insert into books(name, country, published_year, price, genre, language_id, publisher_id, author_id)
values
    ('Taina', 'Russia', '2021-11-12', '568', 'Detective', '5', '12', '6'),
    ('Zvezdopad', 'Russia', '2004-12-09', '446', 'Romance', '5', '13', '11'),
    ('Homo Faber', 'Germany', '2022-04-10', '772', 'Fantasy', '3', '5', '3'),
    ('Der Richter und Sein Henker', 'Germany', '2011-02-01', '780', 'Detective', '3', '3', '10'),
    ('Lord of the Flies', 'United States', '2015-07-11', '900', 'Fantasy', '1', '2', '4'),
    ('Un soir au club', 'France', '2018-01-12', '480', 'Drama', '2', '1', '1'),
    ('Voina', 'Russia', '2004-12-06', '880', 'History', '5', '4', '13'),
    ('Sun Tzu', 'China', '2022-09-05', '349', 'History', '4', '4', '2'),

    ('Emil und die Detektive', 'Germany', '2010-06-11', '228', 'Detective', '3', '5', '10'),
    ('Coule la Seine', 'France', '2015-03-01', '732', 'Fantasy', '2', '6', '1'),
    ('Love and hatred', 'Russia', '2012-02-03', '763', 'Romance', '5', '14', '13'),
    ('Fantastic Mr Fox', 'United States', '2018-03-10', '309', 'Fantasy', '1', '9', '8'),
    ('Contes de la Bécasse', 'France', '2019-10-05', '378', 'Romance', '2', '6', '9'),
    ('The Death of Ivan Ilyich', 'Russia', '2000-09-24', '814', 'Drama', '5', '6', '6'),
    ('Bonjour Tristesse', 'France', '2015-08-02', '502', 'Romance', '2', '8', '5'),
    ('Die Verwandlung', 'Germany', '2008-06-19', '305', 'Detective', '3', '7', '12'),
    ('The Inspector Barlach Mysteries', 'Germany', '2007-03-10', '566', 'Detective', '3', '3', '3'),
    ('LÉtranger', 'France', '2017-11-14', '422', 'Romance', '2', '8', '5'),
    ('Lao Tse', 'China', '2005-07-16', '900', 'Fantasy', '4', '4', '2'),
    ('Semya', 'Russia', '2004-04-12', '194', 'Drama', '5', '13', '11'),
    ('Empty World', 'United States', '2008-01-04', '324', 'Fantasy', '1', '11', '15'),
    ('Domainer', 'Germany', '2020-01-06', '420', 'Romance', '3', '5', '10'),
    ('The Fault in Our Stars', 'United States', '2008-02-13', '396', 'Romance', '1', '9', '4'),
    ('Die R uber', 'Germany', '2020-06-25', '300', 'Romance', '3', '7', '12'),
    ('Jung Chang', 'China', '2021-05-14', '600', 'History', '4', '10', '7'),
    ('Les Aventures de Tintin', 'France', '2015-04-10', '582', 'Drama', '2', '1', '5'),
    ('Unvollendete Geschichte', 'Germany', '2010-12-12', '269', 'Detective', '3', '5', '10'),
    ('Amy Tan', 'China', '2023-01-09', '486', 'Drama', '4', '4', '7'),
    ('Krasnaya luna', 'Russia', '2020-02-07', '550', 'Fantasy', '5', '12', '11'),
    ('Emma', 'United States', '2021-10-11', '599', 'Biography', '1', '2', '15');


-- 1.Китептердин атын, чыккан жылын, жанрын чыгарыныз.
select books.name,books.published_year,books.Genre from books;
-- 2.Авторлордун мамлекеттери уникалдуу чыксын.
select distinct authors.country from authors;
-- 3.2020-2023 жылдардын арасындагы китептер чыксын.
select * from books where published_year between '2020.1.1' and '2023.1.1';
-- 4.Детектив китептер жана алардын аттары чыксын.
select name,genre from books where genre = 'Detective';
-- 5.Автордун аты-жону author деген бир колонкага чыксын.
select concat(first_name,' ',last_name) as fullname from authors;
-- 6.Германия жана Франциядан болгон авторлорду толук аты-жону менен сорттоп чыгарыныз.
select concat(first_name,' ',last_name) as fullname from authors where country in ('Germany','France') group by fullname ;
-- 7.Романдан башка жана баасы 500 дон кичине болгон китептердин аты, олкосу, чыккан жылы, баасы жанры чыксын..
select books.name,books.country,books.published_year,books.price,books.Genre from books where Genre != 'Romance' and price < 500;
-- 8.Бардык кыз авторлордун биринчи 3 ну чыгарыныз.
select * from authors where Gender = 'Female' limit 3;
-- 9.Почтасы .com мн буткон, аты 4 тамгадан турган, кыз авторлорду чыгарыныз.
select * from authors where email like '%.com' and length(first_name) = 4;
-- 10.Бардык олколорду жана ар бир олкодо канчадан автор бар экенин чыгаргыла.
select country,count(id) as author_count from authors group by country;
-- 11.Уч автор бар болгон олколорду аты мн сорттоп чыгарыныз.
select country from authors group by country having count(id) = 3 order by country;
-- 12. Ар бир жанрдагы китептердин жалпы суммасын чыгарыныз
select distinct Genre, sum(books.price) from books group by Genre;
-- 13. Роман жана Детектив китептеринин эн арзан бааларын чыгарыныз
select Genre , min(price) from books where Genre in ('Romance','Detective') group by Genre;
-- 14.История жана Биографиялык китептердин сандарын чыгарыныз
select Genre,count(Genre) from books where Genre in ('History','Biography') group by Genre ;
-- 15.Китептердин , издательстволордун аттары жана тили чыксын
select p.name,language from books b inner join publishers p on b.id = p.id inner join languages l on l.id = b.id;
-- 16.Авторлордун бардык маалыматтары жана издательстволору чыксын, издательство болбосо null чыксын
select first_name,last_name ,p.name from authors a full join books b on a.id = b.author_id full join publishers p on b.publisher_id = p.id;
-- 17.Авторлордун толук аты-жону жана китептери чыксын, китеби жок болсо null чыксын.
select first_name,last_name,b.name from authors a full join books b  on a.id = b.author_id left join publishers p on b.publisher_id = p.id;
-- 18.Кайсы тилде канча китеп бар экендиги ылдыйдан ойлдого сорттолуп чыксын.
select id,language, (select count(b.id) from books b where b.language_id = l.id )as count_book from languages l order by count_book desc ;
-- 19.Издательствонун аттары жана алардын тапкан акчасынын оточо суммасы тегеректелип чыгарылсын.
select p.name ,(select round(avg(b.price)) from books b where b.publisher_id = p.id) as avq_pub from publishers p ;
-- 20.2010-2015 жылдардын арасындагы китептер жана автордун аты-фамилиясы чыксын.
select a.first_name,a.last_name ,b.name,b.published_year from authors a inner join books b on a.id = b.author_id where published_year between '2010.1.1' and '2015.1.1';
-- 21.2010-2015 жылдардын арасындагы китептердин авторлорунун толук аты-жону жана алардын тапкан акчаларынын жалпы суммасы чыксын.
select a.first_name,a.last_name,sum(b.price) from authors a inner join books b on a.id = b.author_id where published_year between '2010.1.1' and '2015.1.1' group by first_name,last_name;

