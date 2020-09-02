require 'bcrypt'
 
 #bundle exec ruby modules.rb

my_password = BCrypt::Password.create("my password")
 
puts my_password

my_password_1 = BCrypt::Password.create("my password")
puts my_password_1
puts my_password == my_password_1

