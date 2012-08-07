# Starts up the blog rack server
require "rack"
require "sqlite3"
require "./user"
require "./post"

# Connect to database
db = SQLite3::Database.new "blog.db"
Post.set_database db
User.set_database db

# Define our blog web app
class Blog

  def call(env)

  	# Get all blog posts
  	@posts = Post.all

  	# Show each blog post
  	response_body = []
  	@posts.each do |post|
  		response_body.push "#{post.id}. #{post.title} by #{post.user.name}\n"
  		response_body.push "#{post.body}\n\n"
  	end

  	# Returns the content
    [200, {"Content-Type" => "text/plain"}, response_body]
    
  end

end
 
Rack::Server.start(:app => Blog.new, :Port => 9292, :server => 'WEBrick')