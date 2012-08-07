# User Class
class User

	attr_accessor :id, :first_name, :last_name, :posts

	# Initialize a user with name
	def initialize(namehash = {})
		@id = namehash[:id]
		@first_name = namehash[:first_name]
		@last_name = namehash[:last_name]
	end

	# Returns the full name
	def name
		"#{first_name} #{last_name}"
	end

	# Factory create method
	def self.create(namehash = {})
		User.new(namehash)
	end

	# Sets the database to access
	def self.set_database(db)
		@@db = db
	end

	# Get a user
	def self.find(id)
		row = @@db.get_first_row "SELECT * FROM users WHERE id = #{id}"
		User.create({
			id: row[0],
			first_name: row[1],
			last_name: row[2]
		})
	end

end

