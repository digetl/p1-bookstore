DROP TABLE books;
DROP TABLE authors;

CREATE TABLE authors
(
    id SERIAL PRIMARY KEY
      name VARCHAR(255) not null
);

CREATE TABLE books
(
    id SERIAL PRIMARY KEY
    title VARCHAR(255) not null,
    genre VARCHAR(255),
    book_type VARCHAR(255),
    stock_level INT,
    selling_price INT,
    buying_price INT,
    author_id INT references authors(id)
);