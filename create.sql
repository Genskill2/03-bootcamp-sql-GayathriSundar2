create table publisher  (
       id serial primary key,
       name text not null,
       country text not null
);

create table books  (
       id serial primary key,
       title text not null,
       publisher integer not null,
       FOREIGN KEY (publisher) REFERENCES publisher (id)
       ON UPDATE SET NULL
       ON DELETE SET NULL
);

create table subjects  (
       id serial primary key,
       name text not null
);

create table book_subjects  (
       book integer not null,
       subject integer not null,
       FOREIGN KEY (book) REFERENCES books (id)
       ON UPDATE SET NULL
       ON DELETE SET NULL,
       FOREIGN KEY (subject) REFERENCES subjects (id)
       ON UPDATE SET NULL
       ON DELETE SET NULL
);
