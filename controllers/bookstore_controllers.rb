require( 'sinatra' )
require( 'sinatra/contrib/all' )
also_reload( '../models/*' ) 

# index
get '/' do
    erb(:index)
end