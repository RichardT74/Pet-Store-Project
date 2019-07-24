require_relative("../models/owner.rb")
require_relative("../models/animal.rb")
require("pry")


Owner.delete_all()

owner1 = Owner.new({
	"owner_name" => "Sally Jones",
	})
owner1.save()

owner2 = Owner.new({
	"owner_name" => "John Lannark",
	})
owner2.save()


owner3 = Owner.new({
	"owner_name" => "Frank O'neil",
	})
owner3.save()

owner4 = Owner.new({
	"owner_name" => "Sara Bradly",
	})
owner4.save()

owner5 = Owner.new({
	"owner_name" => "Animal shelter"
	})
owner5.save()


animal1 = Animal.new({
  "name" => "Rex",
  "type" => "Dog",
  "breed" => "Collie",
	"age" => 3,
	"admission_date" => "03/04/2019",
	"ready_to_adopt" => true,
	"owner_id" => owner1.id
	})
	animal1.save()


	animal2 = Animal.new({
	  "name" => "Fenton",
	  "type" => "Dog",
	  "breed" => "Labrador",
		"age" => 3,
		"admission_date" => "05/05/2019",
		"ready_to_adopt" => true,
		"owner_id" => owner1.id
		})
		animal2.save()


		animal3 = Animal.new({
			"name" => "Mr Tibs",
			"type" => "Cat",
			"breed" => "British Shorthair",
			"age" => 1,
			"admission_date" => "02/02/2019",
			"ready_to_adopt" => true,
			"owner_id" => owner2.id
			})
			animal3.save()

		animal4 = Animal.new({
				"name" => "Fergus",
				"type" => "Cat",
				"breed" => "Maine Coon",
				"age" => 1,
				"admission_date" => "01/01/2019",
				"ready_to_adopt" => true,
				"owner_id" => owner2.id
				})
		animal4.save()

		animal5 = Animal.new({
				"name" => "Pushkin",
				"type" => "Cat",
				"breed" => "Russian Longhair",
				"age" => 4,
				"admission_date" => "03/16/2019",
				"ready_to_adopt" => false,
				"owner_id" => owner4.id
				})
		animal5.save()

		animal6 = Animal.new({
				"name" => "Nelson",
				"type" => "Cat",
				"breed" => "Mix",
				"age" => 2,
				"admission_date" => "02/12/2019",
				"ready_to_adopt" => false,
				"owner_id" => owner5.id
				})
		animal6.save()

		animal7 = Animal.new({
				"name" => "Khan	Genghis",
				"type" => "Cat",
				"breed" => "Persian",
				"age" => 2,
				"admission_date" => "02/12/2019",
				"ready_to_adopt" => false,
				"owner_id" => owner5.id
				})
		animal7.save()


		animal8 = Animal.new({
				"name" => "Zola",
				"type" => "Dog",
				"breed" => "Briard",
				"age" => 6,
				"admission_date" => "06/07/2019",
				"ready_to_adopt" => true,
				"owner_id" => owner5.id
				})
		animal8.save()

		animal8 = Animal.new({
				"name" => "Happy",
				"type" => "Dog",
				"breed" => "mongrel",
				"age" => 6,
				"admission_date" => "06/07/2019",
				"ready_to_adopt" => true,
				"owner_id" => owner5.id
				})
		animal8.save()


		animal9 = Animal.new({
				"name" => "Dopey",
				"type" => "Dog",
				"breed" => "Poodle",
				"age" => 5,
				"admission_date" => "06/06/2019",
				"ready_to_adopt" => true,
				"owner_id" => owner5.id
				})
		animal9.save()

		animal10 = Animal.new({
				"name" => "Bashful",
				"type" => "Dog",
				"breed" => "Poodle",
				"age" => 3,
				"admission_date" => "02/06/2019",
				"ready_to_adopt" => true,
				"owner_id" => owner5.id
				})
		animal10.save()

binding.pry
nil
