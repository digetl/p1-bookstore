require( 'sinatra' )
require( 'sinatra/contrib/all' )
require_relative( '../models/book.rb' )
also_reload( '../models/*' ) 

# new
get '/books/new' do
    erb(:"new")
end

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

#create
post '/books/' do
    Book.new(params).save()
    redirect to '/books'
end