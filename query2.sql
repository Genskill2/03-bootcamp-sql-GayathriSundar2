SELECT books.title,publisher.name FROM books INNER JOIN publisher ON books.publisher = publisher.id AND publisher.country = 'UK'; 
