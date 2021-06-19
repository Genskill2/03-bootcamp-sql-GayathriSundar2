DROP TABLE IF EXISTS publisher;
DROP TABLE IF EXISTS books;
DROP TABLE IF EXISTS subjects;
DROP TABLE IF EXISTS books_subjects;


create table publisher  (
       id INTEGER PRIMARY KEY NOT NULL AUTOINCREMENT,
       name text,
       country text
);

create table books  (
       id INTEGER PRIMARY KEY NOT NULL AUTOINCREMENT,
       title text NOT NULL,
       publisher INTEGER NOT NULL,
       FOREIGN KEY (publisher) REFERENCES publisher (id)
);

create table subjects  (
       id INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
       name text NOT NULL
);

create table books_subjects  (
       book INTEGER NOT NULL,
       subject INTEGER NOT NULL,
       FOREIGN KEY (book) REFERENCES books (id),
       FOREIGN KEY (subject) REFERENCES subjects (id)
);
