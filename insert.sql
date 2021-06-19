INSERT INTO publisher (name,country) VALUES ('PHI','India');
INSERT INTO publisher (name,country) VALUES ('Harper','USA');
INSERT INTO publisher (name,country) VALUES ('GCP','USA');
INSERT INTO publisher (name,country) VALUES ('Avery','USA');
INSERT INTO publisher (name,country) VALUES ('Del Rey','UK');
INSERT INTO publisher (name,country) VALUES ('Vintage','UK');


INSERT INTO subjects (name) VALUES ('C');
INSERT INTO subjects (name) VALUES ('UNIX');
INSERT INTO subjects (name) VALUES ('Technology');
INSERT INTO subjects (name) VALUES ('Go');
INSERT INTO subjects (name) VALUES ('Science Fiction');
INSERT INTO subjects (name) VALUES ('Productivity');
INSERT INTO subjects (name) VALUES ('Psychology');
INSERT INTO subjects (name) VALUES ('Politics');
INSERT INTO subjects (name) VALUES ('History');


INSERT INTO books (title,publisher) SELECT 'The C Programming Language',id FROM publisher WHERE name = 'PHI';
INSERT INTO books (title,publisher) SELECT 'The Go Programming Language',id FROM publisher WHERE name = 'PHI';
INSERT INTO books (title,publisher) SELECT 'The UNIX Programming Environment',id FROM publisher WHERE name = 'PHI';
INSERT INTO books (title,publisher) SELECT 'Cryptonomicon',id FROM publisher WHERE name = 'Harper';
INSERT INTO books (title,publisher) SELECT 'Deep Work',id FROM publisher WHERE name = 'GCP';
INSERT INTO books (title,publisher) SELECT 'Atomic Habits',id FROM publisher WHERE name = 'Avery';
INSERT INTO books (title,publisher) SELECT 'The City and The City',id FROM publisher WHERE name = 'Del Rey';
INSERT INTO books (title,publisher) SELECT 'The Great War for Civilisation',id FROM publisher WHERE name = 'Vintage';


INSERT INTO books_subjects (book,subject) SELECT (SELECT id FROM books WHERE id =1) AS book, (SELECT id FROM subjects WHERE id = 1);
INSERT INTO books_subjects (book,subject) SELECT (SELECT id FROM books WHERE id =1) AS book, (SELECT id FROM subjects WHERE id = 2);
INSERT INTO books_subjects (book,subject) SELECT (SELECT id FROM books WHERE id =1) AS book, (SELECT id FROM subjects WHERE id = 3);
INSERT INTO books_subjects (book,subject) SELECT (SELECT id FROM books WHERE id =2) AS book, (SELECT id FROM subjects WHERE id = 4);
INSERT INTO books_subjects (book,subject) SELECT (SELECT id FROM books WHERE id =2) AS book, (SELECT id FROM subjects WHERE id = 3);
INSERT INTO books_subjects (book,subject) SELECT (SELECT id FROM books WHERE id =3) AS book, (SELECT id FROM subjects WHERE id = 2);
INSERT INTO books_subjects (book,subject) SELECT (SELECT id FROM books WHERE id =3) AS book, (SELECT id FROM subjects WHERE id = 3);
INSERT INTO books_subjects (book,subject) SELECT (SELECT id FROM books WHERE id =4) AS book, (SELECT id FROM subjects WHERE id = 3);
INSERT INTO books_subjects (book,subject) SELECT (SELECT id FROM books WHERE id =4) AS book, (SELECT id FROM subjects WHERE id = 5);
INSERT INTO books_subjects (book,subject) SELECT (SELECT id FROM books WHERE id =5) AS book, (SELECT id FROM subjects WHERE id = 3);
INSERT INTO books_subjects (book,subject) SELECT (SELECT id FROM books WHERE id =5) AS book, (SELECT id FROM subjects WHERE id = 6);
INSERT INTO books_subjects (book,subject) SELECT (SELECT id FROM books WHERE id =6) AS book, (SELECT id FROM subjects WHERE id = 6);
INSERT INTO books_subjects (book,subject) SELECT (SELECT id FROM books WHERE id =6) AS book, (SELECT id FROM subjects WHERE id = 7);
INSERT INTO books_subjects (book,subject) SELECT (SELECT id FROM books WHERE id =7) AS book, (SELECT id FROM subjects WHERE id = 5);
INSERT INTO books_subjects (book,subject) SELECT (SELECT id FROM books WHERE id =7) AS book, (SELECT id FROM subjects WHERE id = 8);
INSERT INTO books_subjects (book,subject) SELECT (SELECT id FROM books WHERE id =8) AS book, (SELECT id FROM subjects WHERE id = 8);
INSERT INTO books_subjects (book,subject) SELECT (SELECT id FROM books WHERE id =8) AS book, (SELECT id FROM subjects WHERE id = 9);

