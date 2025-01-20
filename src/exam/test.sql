create table group1 (id serial primary key,
group_name varchar,
date_of_birth date,
image varchar);

create table course1 (
    id serial primary key,
    course_name varchar,
image varchar,
group_id int references group1(id));

create table student1(id serial primary key ,
first_name varchar,
last_name varchar,
gender varchar,
phoneNumber varchar,
group_id int references group1(id));

create table mentor1(id serial primary key ,
first_name varchar,
last_name varchar,
                     gender varchar,
    email varchar,
    specialization varchar,
    phoneNumber varchar,
    course_id int references course1(id)
);
create table lesson1(id serial primary key ,
lesson_name varchar,
course_id int references course1(id))

----------------------
alter table group1
drop column date_of_birth;

alter table group1
drop column image;

alter table student1
drop column phoneNumber;

alter table student1
add column email varchar,
    add column date_of_birth date;

select * from student1;

alter table course1
rename column image to start_date;

alter table mentor1
drop column phoneNumber,
    add column experience int;


insert into group1(group_name)
values ('Java 16'),
       ('JS 17'),
       ('Java 12'),
       ('JS 16'),
       ('Java 17'),
       ('JS 12');
-------- ------------------------------------------------------------
insert into course1 (course_name, start_date, group_id)
values ('Java 16 core', '2023-01-03', 1),
       ('JS 16 core', '2023-01-03', 2),
       ('Java 17 core', '2023-10-03', 3),
       ('JS 17 core', '2023-10-03', 4),
       ('Java 12 core', '2024-01-08', 5),
       ('JS 12 core', '2024-01-08', 6),
       ('Technical English', '2024-01-08', 1),
       ('Python', '2024-01-08', 6);

-------- ---------------------------------- --------------------------
insert into lesson1(lesson_name, course_id)
values ('Loops', 1),
       ('HTML', 2),
       ('Methods', 3),
       ('CSS', 4),
       ('Collections', 5),
       ('React', 6);
-------- ---------------------------------- ---------------------------------- ---------------------------------- --------------------------
insert into mentor1 (first_name, last_name, gender, email, specialization, experience, course_id)
values ('Mukhammed', 'Asantegin', 'Female', 'datka@gmail.com', 'java', 2, 1),
       ('Urmat', 'Taichikov', 'Male', 'ulan@gmail.com', 'java', 3, 3),
       ('Aizat', 'Duisheeva', 'Female', 'aizat@gmail.com', 'java', 1, 5),
       ('Elizar', 'Aitbek uulu', 'Male', 'elizar@gmail.com', 'js', 1, 2),
       ('Aziat', 'Abdimalikov', 'Male', 'aziat@gmail.com', 'js', 1, 4),
       ('Alisher', 'Jumanov', 'Male', 'alisher@gmail.com', 'js', 1, 6);

-------- ---------------------------------- ---------------------------------- ---------------------------------- --------------------------
insert into student1 (id, first_name, last_name, email, gender, date_of_birth, group_id)
values (1, 'Knox', 'Jacquot', 'kjacquot0@addthis.com', 'Male', '2004-04-12', 1);
insert into student1 (id, first_name, last_name, email, gender, date_of_birth, group_id)
values (2, 'Dewain', 'Hunt', 'dhunt1@trellian.com', 'Male', '2003-04-13', 2);
insert into student1 (id, first_name, last_name, email, gender, date_of_birth, group_id)
values (3, 'Jarrett', 'Iianon', 'jiianon2@chronoengine.com', 'Male', '2005-05-05', 3);
insert into student1 (id, first_name, last_name, email, gender, date_of_birth, group_id)
values (4, 'Merry', 'Niezen', 'mniezen3@canalblog.com', 'Male', '1999-04-03', 4);
insert into student1 (id, first_name, last_name, email, gender, date_of_birth, group_id)
values (5, 'Nollie', 'Pellingar', 'npellingar4@usgs.gov', 'Female', '2003-05-06', 5);
insert into student1 (id, first_name, last_name, email, gender, date_of_birth, group_id)
values (6, 'Eveleen', 'Moukes', 'emoukes5@amazon.co.uk', 'Female', '1996-03-03', 6);
insert into student1 (id, first_name, last_name, email, gender, date_of_birth, group_id)
values (7, 'Nollie', 'Becker', 'nbecker6@is.gd', 'Male', '1994-02-04', 1);
insert into student1 (id, first_name, last_name, email, gender, date_of_birth, group_id)
values (8, 'Nadine', 'Robilart', 'nrobilart7@walmart.com', 'Female', '2000-06-06', 2);
insert into student1 (id, first_name, last_name, email, gender, date_of_birth, group_id)
values (9, 'Dex', 'Prugel', 'dprugel8@arizona.edu', 'Male', '2001-03-04', 3);
insert into student1 (id, first_name, last_name, email, gender, date_of_birth, group_id)
values (10, 'Phyllis', 'Baroche', 'pbaroche9@state.gov', 'Female', '2004-04-04', 4);
insert into student1 (id, first_name, last_name, email, gender, date_of_birth, group_id)
values (11, 'Bernadette', 'Dulson', 'bdulsona@altervista.org', 'Female', '2004-04-04', 5);
insert into student1 (id, first_name, last_name, email, gender, date_of_birth, group_id)
values (12, 'Earlie', 'Pledge', 'epledgeb@jimdo.com', 'Male', '1993-12-04', 6);
insert into student1 (id, first_name, last_name, email, gender, date_of_birth, group_id)
values (13, 'Luigi', 'Standish', 'lstandishc@army.mil', 'Male', '1998-11-13', 1);
insert into student1 (id, first_name, last_name, email, gender, date_of_birth, group_id)
values (14, 'Cody', 'McLeoid', 'cmcleoidd@yahoo.com', 'Male', '2000-10-10', 2);
insert into student1 (id, first_name, last_name, email, gender, date_of_birth, group_id)
values (15, 'Heall', 'Dolligon', 'hdolligone@squidoo.com', 'Male', '2003-09-09', 3);
insert into student1 (id, first_name, last_name, email, gender, date_of_birth, group_id)
values (16, 'Isiahi', 'Somerscales', 'isomerscalesf@eepurl.com', 'Male', '1995-05-03', 4);
insert into student1 (id, first_name, last_name, email, gender, date_of_birth, group_id)
values (17, 'Matthieu', 'Spolton', 'mspoltong@so-net.ne.jp', 'Male', '1995-03-30', 5);
insert into student1 (id, first_name, last_name, email, gender, date_of_birth, group_id)
values (18, 'Esme', 'Brockway', 'ebrockwayh@hexun.com', 'Female', '1997-08-08', 6);
insert into student1 (id, first_name, last_name, email, gender, date_of_birth, group_id)
values (19, 'Erroll', 'Cutforth', 'ecutforthi@wisc.edu', 'Male', '2002-03-30', 1);
insert into student1 (id, first_name, last_name, email, gender, date_of_birth, group_id)
values (20, 'Gordon', 'Thieme', 'gthiemej@japanpost.jp', 'Male', '1994-04-04', 2);
insert into student1 (id, first_name, last_name, email, gender, date_of_birth, group_id)
values (21, 'Dom', 'Arnecke', 'darneckek@google.fr', 'Male', '2000-03-03', 3);
insert into student1 (id, first_name, last_name, email, gender, date_of_birth, group_id)
values (22, 'Raven', 'Yarrall', 'ryarralll@vimeo.com', 'Female', '2009-05-05', 4);
insert into student1 (id, first_name, last_name, email, gender, date_of_birth, group_id)
values (23, 'Emery', 'McSporon', 'emcsporonm@reverbnation.com', 'Male', '1990-12-20', 5);
insert into student1 (id, first_name, last_name, email, gender, date_of_birth, group_id)
values (24, 'Der', 'Caville', 'dcavillen@csmonitor.com', 'Male', '2003-03-20', 6);
insert into student1 (id, first_name, last_name, email, gender, date_of_birth, group_id)
values (25, 'Erich', 'Lorroway', 'elorrowayo@bizjournals.com', 'Male', '2000-08-07', 1);
insert into student1 (id, first_name, last_name, email, gender, date_of_birth, group_id)
values (26, 'Edan', 'Brayne', 'ebraynep@prweb.com', 'Male', '2008-12-23', 2);
insert into student1 (id, first_name, last_name, email, gender, date_of_birth, group_id)
values (27, 'Garald', 'Puddle', 'gpuddleq@taobao.com', 'Male', '1990-03-03', 3);
insert into student1 (id, first_name, last_name, email, gender, date_of_birth, group_id)
values (28, 'Orelee', 'Hoggan', 'ohogganr@e-recht24.de', 'Female', '1999-03-29', 4);
insert into student1 (id, first_name, last_name, email, gender, date_of_birth, group_id)
values (29, 'Dion', 'Kepp', 'dkepps@boston.com', 'Female', '2000-12-13', 5);
insert into student1 (id, first_name, last_name, email, gender, date_of_birth, group_id)
values (30, 'Winna', 'Ganders', 'wganderst@artisteer.com', 'Female', '2001-11-11', 6);


-- Tasks(Query) Groups

-- 1. Получите все записи таблицы groups;
select * from group1;
-- 2. Получите общее количество записей таблицы groups
select count(g.*) from group1 g;
-- 3. Выведите группы их курсы
select g.group_name, c.course_name from group1 g join course1 c on g.id = c.group_id;
-- 4. Выведите курсы групп у которых курс начался с 202011 по 202333
select c.course_name, g.group_name
from group1 g join course1 c on g.id = c.group_id where c.start_date between '2020-01-01' and '2023-03-03';
-- 5. Выведите имена, дату рождения студентов , которые родились с 198011 по 20041212, и названиегруппы
select s.first_name, s.last_name, s.date_of_birth, g.group_name from student1 s join group1 g on s.group_id = g.id where s.date_of_birth between '1980-01-01' and '2024-12-12';
-- 6. Вывести полное имя, возраст, почту студентов и название группы, где айди группы равен 3
select (s.first_name, s.last_name) as full_name, extract(year from s.date_of_birth) as age, s.email, g.group_name
from student1 s
    join group1 g on g.id = s.group_id
where s.id = 3;
-- 7. Вывести все курсы одной группы, где название группы 'Java-13'
select c.*
from group1
    join course1 c on group1.id = c.group_id
where c.course_name = 'Java-13';
-- 8. Вывести название всех групп и количество студентов в группе
select g.group_name, count(s.first_name) from group1 g join student1 s on g.id = s.group_id group by g.group_name;
-- 9.Вывести название всех групп и количество студентов в группе, если в группе больше 4 студентов.
select g.group_name, count(s.id) as count_stud
from group1 g
    join student1 s on g.id = s.group_id
 group by g.group_name having count(s.id ) > 4;

-- 10. Отсортируйте имена студентов группы по убыванию,
-- где айди группы равна 4 и выведите айдистудента, имя, пол и название группы.
select s.id, s.first_name, s.gender, s.first_name, g.id, g.group_name
from group1 g
join student1 s on g.id = s.group_id
order by s.first_name;



-- Tasks(Query) Course

-- 1. Вывести все курсы
    select * from course1;
-- 2. Вывести все уроки курса 'Technical English'
    select l.*
    from course1 c
        join lesson1 l on c.id = l.course_id
    where c.course_name = 'Technical English';
-- 3. Вывести количество всех студентов курса id  4
    select c.id, c.course_name, count(s.id) as stud_count
    from course1 c
    join student1 s on c.group_id = s.group_id
    where c.id = 4 group by c.course_name,c.id;
-- 4. Вывести имя, почту, специализацию ментора и название курса где курс айди равен 2
    select m.first_name, m.email, m.specialization, c.course_name, c.id as course_id
    from course1 c
    join mentor1 m on c.id = m.course_id
    where c.id = 2;
-- 5. Посчитaть сколько менторов в каждом курсе
    select count(m.id) as mentor_count, c.course_name
    from course1 c
    join mentor1 m on c.id = m.course_id
    group by c.course_name;

-- 6. Сгруппируйте и посчитайте менторов в каждом курсе и выведите только те курсы,
-- где в курсебольше 2 менторов
    select c.course_name, count(m.id)
    from course1 c
    join mentor1 m on c.id = m.course_id
    group by c.course_name having count(m.id) > 2;
-- 7. Вывести название, дату и полное имя ментора,
-- все курсы которые начинаются с 202011 по 202333
    select c.course_name, c.start_date, (m.first_name, m.last_name) as full_name_mentor
    from course1 c
    join mentor1 m on c.id = m.course_id
    where c.start_date between '2020-01-01' and '2023-03-03';
-- 8. Вывести имя, почту, возраст студентов курса 'Java 17 core'
    select s.first_name, s.email, 2025 - extract(year from s.date_of_birth)
    from student1 s
    join course1 c on s.group_id = c.group_id
    where c.course_name = 'Java 17 core';
-- 9. Вывести тот курс где нет ментора
    select c.*, m.id
    from course1 c
    left join mentor1 m on c.id = m.course_id
    where m.id is null;
-- 10.Вывести тот курс где нет уроков
    select c.*, l.id
    from course1 c
    left join lesson1 l on c.id = l.course_id
    where l.id is null;
-- 11.Вывести тот курс где нет студентов
select c.*, s.id
from course1 c
left join student1 s on c.group_id = s.group_id
where s.id is null;

-- Tasks(Query) Students
-- 1. Вывести общее количество студентов
    select count(s.id) from student1 s;
-- 2. Вывести имя, почту и пол студента, id группы которого равна 2
    select g.id as grou_id, s.first_name, s.email, s.gender
    from group1 g
    join student1 s on g.id = s.group_id
    where g.id = 2;
-- 3. Вывести группу студента, id которого равна 4
    select g.group_name, s.id as stud_id, s.first_name
    from group1 g
    join student1 s on g.id = s.group_id
    where s.id = 4;
-- 4. Сгруппируйте студентов по gender и выведите общее количество gender
    select s.gender, count(s.id)
    from student1 s
    group by s.gender;
-- 5. Найдите студента с id 8 и обновите его данные
   alter table student1
   set column first_name = 'Ainura',

-- 6. Найдите самого старшего студента курса, id курса которого равна 5
select max(2025 - extract(year from s.date_of_birth))
from course1 c
join student1 s on c.group_id = s.group_id
where c.id = 5;
-- 7. Добавьте unique constraint email в столбец таблицы students
    alter table student1
    add constraint email_u unique (email);
-- 8. Добавьте check constraint gender в столбец таблицы mentors
    alter table mentor1
    add constraint gender_ch check (gender in ('Male', 'Female'));
-- 9. Добавьте check constraint gender в столбец таблицы students
alter table  student1
  add constraint gender_check CHECK (gender IN ('Male', 'Female'));

-- Tasks(Query) Mentors
-- 1. Вывести средний возраст всех менторов

-- 2. Вывести имя, почту и специализацию ментора группы 'Java-12'
    select m.first_name, m.email, m.specialization
    from group1 g
    join course1 c on g.id = c.group_id
    join mentor1 m on c.id = m.course_id
    where g.group_name = 'Java-12';
-- 3. Вывести всех менторов, чей опыт превышает 1 год
    select * from mentor1
    where mentor1.experience > 1;
-- 4. Вывести ментора у которого нет курса
    select m.*, c.id from mentor1 m
    left join course1 c on m.course_id = c.id
    where c.id is null;
-- 5. Вывести id, имя ментора и его студентов
    select m.id, m.first_name, s.id, s.first_name from group1 g
        join course1 c on g.id = c.group_id
        join student1 s on g.id = s.group_id
    join mentor1 m on s.first_name = m.first_name;
-- 6. Посчитать сколько студентов у каждого ментора, и вывести полное имя ментора и количество его
-- студентов err
    select count(s.id) as count_stud, m.first_name
    from group1 g
    join course1 c join course1 c2 on g.id = c2.group_id
    join student1 s on g.id = s.group_id
    join mentor1 m on s.first_name = m.first_name
    group by m.first_name;
-- 7. Вывести ментора у которого нет студентов
    select m.first_name,s.id
    from mentor1 m
    join course1 c on m.course_id = c.id
    join lesson1 l on c.id = l.course_id
    left join student1 s on c.group_id = s.group_id
    where s.id is null;
-- 8. Вывести ментора у которого студентов больше чем 2
    select m.first_name as mentor_name, count(s.id)
    from group1 g
    join course1 c on g.id = c.group_id
    join mentor1 m on c.id = m.course_id
    join student1 s on g.id = s.group_id
    group by m.first_name
    having count(s.id) > 2;
-- 9. Вывести курсы ментора с id 5
    select c.id, c.course_name, m.first_name
    from group1 g
    join course1 c on g.id = c.group_id
    join mentor1 m on c.id = m.course_id
    where c.id  = 5;
-- 10.Вывести все уроки ментора, id которого равен 5
select l.*, m.first_name as mentor_name
from  course1 c
join mentor1 m on c.id = m.course_id
join lesson1 l on c.id = l.course_id
where m.id = 5;


-- Tasks(Query) Lessons
-- 1. Вывести все уроки
    select * from lesson1;
-- 2.Получить все уроки студента, айди которого равен 2
    select l.*, s.id as id_stud, s.first_name
    from group1 g
    join student1 s on g.id = s.group_id
    join course1 c on g.id = c.group_id
    join lesson1 l on c.id = l.course_id
    where s.id = 2;
-- 3.Посчитать уроки каждой группы и вывести название группы и количество уроков,
-- где количество уроков больше чем 2
    select count(l.id), g.group_name
    from group1 g
    join course1 c on g.id = c.group_id
    join lesson1 l on c.id = l.course_id
    group by g.group_name having count(l.id) > 2;
-- 4.Отсортировать уроки студента по названию, где id студента равна 7
    select l.lesson_name, s.first_name from group1 g
       join student1 s on g.id = s.group_id
       join course1 c on g.id = c.group_id
       join lesson1 l on c.id = l.course_id
    where s.id = 7 order by  l.lesson_name;
-- 5.Получить все уроки курса, где название курса 'Python kids'
select l.* from course1 c
join lesson1 l on c.id = l.course_id
where l.lesson_name = 'Python kids';
-- 6.Получить все уроки ментора, id которого равен 5
select l.* from course1 c join mentor1 m on c.id = m.course_id
join lesson1 l on c.id = l.course_id where m.id = 5;
