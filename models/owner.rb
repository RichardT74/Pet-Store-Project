require_relative('../sql_runner.rb')

class Owner

	attr_reader :id
	attr_accessor :owner_name

	def initinalize ( options )
		@id = options['id'].to_i
		@owner_name = options['owner_name']
	end

	def save()
		sql = "INSERT INTO owners
		(
			owner_name
		)
			VALUES
		(
			$1
		)
		RETURNING *"
				values = [@owner_name]
				owner_data = SqlRunner.run(sql, values)
				@id = owner_data.first()['id'].to_i
	end
