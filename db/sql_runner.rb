require('pg')

class SqlRunner

	def self.run(sql, values = [])
		begin
			db = PG.connect({dbname: 'pet_store', host: 'localhost'})
			de.prepare("query", sql)
			result = db.exec_prepared("query", values)
		ensure
			db.close() if db != nil
		end
		return result
	end
end 
