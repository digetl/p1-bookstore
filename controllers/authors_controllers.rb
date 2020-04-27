require( 'sinatra' )
require( 'sinatra/contrib/all' )
require_relative( '../models/author.rb' )
require('pry')
also_reload( '../models/*' )

# new
get '/authors/new' do
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

# create
post '/authors' do
    Author.new(params).save()
    redirect to '/authors'
end

# edit
get '/authors/:id/edit' do
    @author = Author.find(params[:id].to_i)
    erb(:"authors/edit")
end

# update
post '/authors/:id' do
    author_to_update = Author.new(params)
    author_to_update.update()
    redirect to '/authors'
end

# destroy
post '/authors/:id/delete' do
    Author.find(params[:id].to_i).delete()
    redirect to '/authors'
end
