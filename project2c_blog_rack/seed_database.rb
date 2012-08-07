# Seed a SQLite3 database
require 'sqlite3'

# Delete the database if it exists
if File.exists? "blog.db"
	File.delete "blog.db"
end

# Open a database
db = SQLite3::Database.new "blog.db"

# Create table for users and posts
db.execute "CREATE TABLE users ( id INTEGER PRIMARY KEY ASC, first_name VARCHAR(255), last_name VARCHAR(255) )"
db.execute "CREATE TABLE posts ( id INTEGER PRIMARY KEY ASC, title VARCHAR(255), body TEXT, user_id INTEGER )"

# Insert a user
db.execute "INSERT INTO users (first_name, last_name) VALUES ('Leo', 'Teo')"

lorem_ipsum = "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aliquam vel accumsan nunc. In hac habitasse platea dictumst. Maecenas placerat congue feugiat. Aenean nulla mi, porttitor ac facilisis sit amet, laoreet vel turpis. Donec eget tortor in nisi auctor dignissim. Vivamus condimentum aliquam tellus id dignissim. Aenean congue, magna sed luctus gravida, turpis quam eleifend urna, viverra eleifend leo nunc et erat. In adipiscing porttitor mauris in luctus."

# Insert a post
db.execute "INSERT INTO posts (title, body, user_id) VALUES ('Hello Blog', '#{lorem_ipsum}', 1)"
db.execute "INSERT INTO posts (title, body, user_id) VALUES ('Hello Blog 2', '#{lorem_ipsum}', 1)"
db.execute "INSERT INTO posts (title, body, user_id) VALUES ('Hello Blog 3', '#{lorem_ipsum}', 1)"