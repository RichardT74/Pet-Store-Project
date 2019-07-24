require ( 'sinatra' )
require ( 'sinatra/contrib/all' )
require ( 'pry-byebug' )


require_relative( './models/animal.rb')
require_relative( './models/owner.rb')
also_reload( 'models/*')
#INDEX
get '/animals' do
	@animals = Animal.all()
	erb( :index )
end

#NEW
get '/animals/new' do
	@owners = Owner.all()
	erb( :new )
end

#CREATE

#
# get '/animals/create' do
#   erb( :new )
# end

post '/animals' do
	@animal = Animal.new(params)
	@animal.save()
redirect '/animals'
end

#animal owners list
get '/animals/owners' do
	@owner = Owner.all()
	@animal = Animal.all()
	erb(:owners)
end

#edit
get '/animals/:id/edit' do # edit
  @animal = Animal.find( params[:id] )
	@owners = Owner.all()
  erb( :edit )
end

post '/animals/:id/delete' do # delete
  animal = Animal.find( params[:id] )
  animal.delete()
  redirect to '/animals'
end

post '/animals/:id' do
	@animal = Animal.new(params)
  @animal.update
	redirect to 'animals'

end

get '/' do
	erb(:home)
end

get '/animals/awaiting' do
	@animals = Animal.available_animals()
  erb(:awaiting)
end
