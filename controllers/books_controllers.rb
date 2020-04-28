require( 'sinatra' )
require( 'sinatra/contrib/all' )
require_relative( '../models/book.rb' )
also_reload( '../models/*' ) 

# new
get '/books/new' do
    @authors = Author.all()
    erb(:"books/new")
end

# index
get '/books' do
    @books = Book.all()
    erb( :"books/index" )
end

# show
get '/books/:id' do
    @book = Book.find(params['id'].to_i)
    @author = Author.find(@book.author_id)
    erb(:"books/show")
end

#create
post '/books' do
    Book.new(params).save()
    redirect to '/books'
end

# edit
get '/books/:id/edit' do
    @book = Book.find(params[:id].to_i)
    @authors = Author.all()
    erb(:"books/edit")
end

#update
post '/books/:id' do
    book_to_update = Book.new(params)
    book_to_update.update()
    redirect to '/books'
end

# destroy
post '/books/:id/delete' do
    Book.find(params[:id].to_i).delete()
    redirect to '/books'
end