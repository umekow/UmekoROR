users = {
	"umekow" => "1234umeko", 
	"tomtom90"=> "mot09", 
	"marym"=> "wwjd"
}

puts "This is an authenticator app. Please enter the correct credentials in order to see the secret message. "
while true

puts 'Please enter username'
username = gets.chomp
puts 'Please enter password'
password = gets.chomp


	if users.keys.include?(username) == true
		if users[username] == password 
			puts "You have unlocked the secret message. Which is:  "
			puts "Pepto Bismal is cherry flavored."
			return 
		end
	end
	puts "Wrong credentials. Please try again!"
end