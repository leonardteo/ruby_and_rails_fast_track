# For testing the blog
require "./user"
require "./post"
require "sqlite3"

# Connect to database
db = SQLite3::Database.new "blog.db"
Post.set_database db
User.set_database db

posts = Post.all

# Show each blog post
posts.each do |post|
	puts "#{post.id}. #{post.title} by #{post.user.name}"
	puts post.body
	puts
end