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

end

