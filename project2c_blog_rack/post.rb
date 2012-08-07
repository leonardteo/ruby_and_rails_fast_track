# Post Class
class Post

	attr_accessor :id, :title, :body, :user_id

	# Constructor
	def initialize(posthash = {})
		@id = posthash[:id]
		@title = posthash[:title]
		@body = posthash[:body]
		@user_id = posthash[:user_id]
	end

	# Creates a new post and returns it
	def self.create(posthash = {})
		Post.new(posthash)
	end

	# Sets the database to access
	def self.set_database(db)
		@@db = db
	end

	# Gets all the posts
	def self.all
		posts = []
		@@db.execute "SELECT * FROM posts" do |row|
			posts.push(Post.create({
				id: row[0],
				title: row[1],
				body: row[2],
				user_id: row[3]
			}))
		end

		# Return the posts array
		posts
	end

	# Get the user object directly from the post
	def user
		User.find @user_id
	end

end