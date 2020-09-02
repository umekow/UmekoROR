
module Crud
	require 'bcrypt'

	puts "Crud module activated"

	def Crud.create_hash(password)
		BCrypt::Password.create(password)
	end

	def Crud.verify_hash(password)
		BCrypt::Password.new(password)
	end

	new_password = create_hash("umeko")

	puts new_password == "umeko"

	def Crud.create_secure_users(users)
		users.each do |user|
			user[:password] = create_hash(user[:password])
		end
		users
	end

	def Crud.authenticate_user(username, password, users)

		users.each do |user|

			if user[:username] == username && verify_hash(user[:password]) == password

				return user
			end

		end

		"Incorrect credentials"

	end 
end

