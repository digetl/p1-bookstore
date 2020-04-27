require( 'sinatra' )
require( 'sinatra/contrib/all' )
require_relative( '../models/author.rb' )
also_reload( '../models/*' )

# new
get '/authors/new' do
    @authors = Author.all()
    erb(:"authors/new")
end

# index
get '/authors' do
    @authors = Author.all()
    erb( :"authors/index" )
end


# show
get '/authors/:id' do
    @author = Author.find(params['id'].to_i)
    erb(:"authors/show")
end

# edit
get '/authors/:id/edit' do
    @author = Author.find(params[:id].to_i)
    erb(:"edit")
end

# update
post '/authors/:id' do
    Author.new(params).update()
    redirect to '/authors'
end

# destroy
post '/authors/:id/delete' do
    Author.find(params[:id].to_i).delete()
    redirect to '/authors'
end
