require_relative('../db/sql_runner')
require_relative('.owner.rb')

class Animal

	attr_reader :id
	attr_accessor :name, :type, :breed, :age, :admission_date, :adoption :owner_id

	def initinalize ( options )
		@id = options['id'].to_i
		@name = options['name']
		@type = options['type']
		@breed = options['breed']
		@age = option['age']
		
