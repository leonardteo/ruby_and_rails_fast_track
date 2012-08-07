# For testing the blog
require "./user"
require "./post"

user = User.create({
	:id => 1,
	:first_name => "Leo",
	:last_name => "Teo"
})

puts user.name

post = Post.create({
	id: 1,
	title: "Hello Ruby!",
	body: "Lorem Ipsum",
	user_id: 1
})

post2 = Post.create({
	id: 2,
	title: "Second Post",
	body: "This is a second post",
	user_id: 1
})

post3 = Post.create({
	id: 3,
	title: "Third Post",
	body: "This is a third post",
	user_id: 1
})

post_array = []
post_array.push post
post_array.push post2
post_array.push post3

user.posts = post_array

# Iterate over posts
user.posts.each do |post|
	puts "#{post.inspect}"
end





















