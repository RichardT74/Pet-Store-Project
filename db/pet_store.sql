DROP TABLE IF EXISTS animals;
DROP TABLE IF EXISTS owners;

CREATE TABLE owners(
	id serial4 PRIMARY KEY,
	owner_name VARCHAR(255)
);

CREATE TABLE animals(
	id SERIAL4 PRIMARY KEY,
	name VARCHAR(255),
	type VARCHAR(255),
	breed VARCHAR(255),
	age INT4,
	admission_date VARCHAR(255),
	owner_id INT4 REFERENCES owners(id) ON DELETE CASCADE
)
