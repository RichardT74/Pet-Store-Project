require_relative("../models/owner.rb")
require_relative("../models/animal.rb")

owner1 = Owner.new({
	"owner_name" => "Sally",
	})
owner1.save()


animal1 = Animal.new({
  "name" => "rex",
  "type" => "dog",
  "breed" => "Collie",
	"age" => 3,
	"admission_date" => "03/04/2019",
	"ready_to_adopt" => true,
	"owner_id" => owner1.id
	})
	animal1.save()


	animal2 = Animal.new({
	  "name" => "fenton",
	  "type" => "dog",
	  "breed" => "labrador",
		"age" => 3,
		"admission_date" => "05/05/2019",
		"ready_to_adopt" => true,
		"owner_id" => owner1.id
		})
		animal2.save()
