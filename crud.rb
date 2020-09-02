require 'bcrypt'

users = [
	{username: "umekow", password: "1234umeko"}, 
	{username: "tomtom90", password: "mot09"}, 
	{username: "marym", password: "wwjd"}
]


def create_hash(password)
	BCrypt::Password.create(password)
end

def verify_hash(password)
  BCrypt::Password.new(password)
end

new_password = create_hash("umeko")

puts new_password == "umeko"

def create_secure_users(users)
	users.each do |user|
		user[:password] = create_hash(user[:password])
	end
	users
end

def authenticate_user(username, password, users)

	users.each do |user|

		if user[:username] == username && verify_hash(user[:password]) == password

			return user
		end

	end

	"Incorrect credentials"

end 
puts create_secure_users(users)

puts authenticate_user("umekow", "124umeko", users )
