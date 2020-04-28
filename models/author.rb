require_relative( '../db/sql_runner' )

class Author

    attr_reader( :id )
    attr_accessor( :name )

    def initialize( options )
        @id = options['id'].to_i if options['id']
        @name = options['name']
    end

    def save()
        sql = "INSERT INTO authors
        name = ( $1 )     
        RETURNING id"
        values = [@name]
        results = SqlRunner.run(sql, values)
        @id = results.first()['id'].to_i
    end

    def self.all()
        sql = "SELECT * FROM authors"
        results = SqlRunner.run(sql)
        return results.map {|hash| Author.new(hash)}
    end

    def self.find(id)
        sql = "SELECT * FROM authors
        WHERE id = $1"
        values = [id]
        results = SqlRunner.run( sql, values )
        return Author.new( results.first )
    end

    def self.delete_all
        sql = "DELETE FROM authors"
        SqlRunner.run( sql )
    end
    
    def update()
        sql = "UPDATE authors
        SET name
        =      
        $1
        WHERE id = $2"
        values = [@name, @id]
        SqlRunner.run( sql, values )
    end


    def delete()
        sql = "DELETE FROM authors
        WHERE id = $1"
        values = [@id]
        SqlRunner.run(sql, values)
    end

    # def books()
    #     sql = "SELECT * FROM books
    #     WHERE"
    # end

end
