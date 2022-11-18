
CREATE TABLE "client" (
  "id" SERIAL PRIMARY KEY,
  "name" varchar,
  "email" varchar NOT NULL,
  "password" varchar NOT NULL,
  "age" int
);

CREATE TABLE "post" (
  "id" SERIAL PRIMARY KEY,
  "title" varchar NOT NULL,
  "description" varchar NOT NULL,
  "client_id" int,
  "comments_id" int,
  "tags_id" int
);

CREATE TABLE "tags" (
  "id" SERIAL PRIMARY KEY,
  "name" varchar
);

CREATE TABLE "comments" (
  "id" SERIAL PRIMARY KEY,
  "comment" varchar NOT NULL
);

ALTER TABLE "post" ADD FOREIGN KEY ("client_id") REFERENCES "client" ("id");

ALTER TABLE "post" ADD FOREIGN KEY ("comments_id") REFERENCES "comments" ("id");

ALTER TABLE "post" ADD FOREIGN KEY ("tags_id") REFERENCES "tags" ("id");


insert into client (name, email, password, age) values 
('Ian', 'Ian@test.com', 'test', 25),
('Carlos', 'Carlos@test.com', 'test1', 30),
('Wendy', 'Wendy@test.com', 'test2', 26);


select * from client;


insert into comments (comment) values
('This is a test1'),
('This is a test2'),
('This is a test3'),
('This is a test4'),
('This is a test5'),
('This is a test7'),
('This is a test8');

select * from comments;


insert into tags (name) values 
('Games'),
('Coding'),
('Anime'),
('Fun');

select * from tags;

insert into post (title, description, client_id, comments_id, tags_id) values 
('test', 'This is test 1', 1, 1, 1),
('test', 'This is test 2', 2, 2, 2),
('test', 'This is test 3', 3, 2, 2),
('test', 'This is test 4', 2, 3, 3),
('test', 'This is test 5', 1, 1, 4);

select * from post;