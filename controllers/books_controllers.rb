require( 'sinatra' )
require( 'sinatra/contrib/all' )
require_relative( '../models/book.rb' )
also_reload( '../models/*' ) 

# index
get '/books' do
    @books = Book.all()
    erb( :"books/index" )
end


# show
get '/books/:id' do
    @book = Book.find(params['id'].to_i)
    erb(:"books/show")
end