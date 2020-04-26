require( 'sinatra' )
require( 'sinatra/contrib/all' )
require_relative( '../models/author.rb' )
also_reload( '../models/*' )

# index
get '/authors' do
    @authors = Author.all()
    erb(:index)
end

