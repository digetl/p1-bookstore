require_relative( '../db/sql_runner' )


class Book

    attr_reader(:title, :genre, :book_type, :stock_level, :selling_price, :buying_price, :author_id, :id)

    def initialise( options )
        @id = options['id'].to_i if options['id']
        @title = options['title']
        @book_type = options['book_type']
        @stock_level = options['stock_level']
        @selling_price = options['selling_price']
        @buying_price = options['buying_price']
        @author_id = options['author_id']
    end

    def save()
        sql = "INSERT INTO books
        (
            title,
            book_type,
            stock_level,
            selling_price,
            buying_price,
            author_id)
        VALUES
        (
            $1, $2, $3, $4, $5, $6
        )
            RETURNING id"
        values = [@title, @book_type, @stock_level, @selling_price, @buying_price, @author_id]
        results = SqlRunner.run(sql, values)
        @id = results.first()['id'].to_i
    end

    def self.find(id)
        sql = "SELECT * FROM books
        WHERE id = $1"
        values = [id]
        results = SqlRunner.run(sql, values)
        return Books.new( results.first)
    end

    def self.delete_all
        sql = "DELETE FROM books"
        SqlRunner.run( sql )
    end

    def self.destroy(id)
        "sql = DELETE FROM books
        WHERE id = $1"
        values = ['id']
        SqlRunner.run(sql,values)
    end
    


end