SELECT subjects.name FROM subjects WHERE id IN (SELECT books_subjects.subject FROM books_subjects INNER JOIN books ON books_subjects.book = books.id AND books.title = 'Atomic Habits');
