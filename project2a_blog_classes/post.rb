# Post Class
class Post

	attr_accessor :id, :title, :body, :user_id

	def initialize(posthash = {})
		@id = posthash[:id]
		@title = posthash[:title]
		@body = posthash[:body]
		@user_id = posthash[:user_id]
	end

	def self.create(posthash = {})
		Post.new(posthash)
	end

end