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
	@owner = Owner.all()
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

#how animals
get '/animals/owners' do
	@owner = Owner.all()
	@animal = Animal.all()
	erb(:owners)
end

get
