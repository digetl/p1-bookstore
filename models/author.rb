require_relative( '../db/sql_runner' )


class Author

    attr_reader( :name, :id)

    def initialize( options )
        @id = options['id'].to_i if options['id']
        @name = options['name']
    end

    def save()
        sql = "INSERT INTO authors
        (
            name
        )
        VALUES
        (
            $1
        )     
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
        sql = "SELECT * FROM zombies
        WHERE id = $1"
        values = [id]
        results = SqlRunner.run( sql, values )
        return Author.new( results.first )
    end

    def self.delete_all
        sql = "DELETE FROM authors"
        SqlRunner.run( sql )
    end
    
end
