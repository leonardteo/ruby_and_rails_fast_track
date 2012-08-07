# Starts up the blog rack server
require "rack"
require "sqlite3"
require "erb"
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

  	# Get the template
    template = ERB.new(File.read("template.html.erb"))

    response_body = []
    response_body.push(template.result(binding))

  	# Returns the content
    [200, {"Content-Type" => "text/html"}, response_body]
    
  end

end
 
Rack::Server.start(:app => Blog.new, :Port => 9292, :server => 'WEBrick')