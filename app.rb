require( 'sinatra' )
require( 'sinatra/contrib/all' )
require_relative('controllers/authors_controllers')
require_relative('controllers/books_controllers')

get '/' do
  erb( :bookstore )
end