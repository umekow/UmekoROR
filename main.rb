require_relative 'crud'

# $LOAD_PATH << "."
# require 'crud'


users = [
	{username: "umekow", password:  "1234umeko"},

	{username: "tomtom90", password:  "mot09"},

	{username: "marym", password:  "wwjd"}
]

hashed_users = Crud.create_secure_users(users)

puts hashed_users