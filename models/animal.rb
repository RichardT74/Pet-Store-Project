require_relative('../db/sql_runner')
require_relative('./owner.rb')

class Animal

	attr_reader :id
	attr_accessor :name, :type, :breed, :age, :admission_date, :ready_to_adopt, :owner_id

	def initialize ( options )
		@id = options['id'].to_i
		@name = options['name']
		@type = options['type']
		@breed = options['breed']
		@age = options['age'].to_i
		@admission_date = options['admission_date']
		@ready_to_adopt = options['ready_to_adopt'] ||=false
		@owner_id = options['owner_id']
	end

	def save
		sql = "INSERT INTO animals
		(
			name,
			type,
			breed,
			age,
			admission_date,
			ready_to_adopt,
			owner_id
			)
			VALUES
			(
				$1, $2, $3, $4, $5, $6, $7
			)
			RETURNING *"
			values = [@name, @type, @breed, @age, @admission_date, @ready_to_adopt, @owner_id]
			animal_data = SqlRunner.run(sql, values)
			@id = animal_data.first()['id'].to_i
		end

		def self.delete_all()
			db = PG.connect({dbname: 'pet_store', host: 'localhost'})
			sql = "DELETE FROM animals;"
			db.prepare('delete_all', sql)
			db.exec_prepared('delete_all')
			db.close
		end

    def owner()
			sql = "SELECT * FROM owners
			WHERE id = $1"
			values = [@owner_id]
			results = SqlRunner.run( sql, values )
			owner_data = results[0]
			owner = Owner.new( owner_data )
			return owner
		end


end
