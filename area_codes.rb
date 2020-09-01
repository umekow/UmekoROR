dial_book = {
  "newyork" => "212",
  "newbrunswick" => "732",
  "edison" => "908",
  "plainsboro" => "609",
  "sanfrancisco" => "301",
  "miami" => "305",
  "paloalto" => "650",
  "evanston" => "847",
  "orlando" => "407",
  "lancaster" => "717"
}
def show_prompt
	puts "You can look up area codes for the listed cities"
end
# Get city names from the hash
def get_city_names(somehash)
	if somehash.class != Hash
		puts "You must enter a hash to get city names"
		return
	end
	somehash.each{|k, v| puts k}
end
def get_city
	puts "Please enter the city you to lookup its area code."
	city = gets.downcase.chomp
	return city 
end

# Get area code based on given hash and key
def get_area_code(somehash, key)
	
	code = somehash[key]
	if code.nil? 
		puts "You must enter one of the listed cities."
	end

	
end
 
show_prompt
# Execution flow
loop do
	puts "Here is the list of cities."
	get_city_names(dial_book)
	city = get_city
	area_code = get_area_code(dial_book, city)
	puts
	puts "#{area_code} is the area code for #{city}."
	puts "Do you want to look up another city's area code? (Y/N)"
	response = gets.upcase.chomp
	if response == "N" 
		puts "Thank you! The program will now end."
		return
	end

end
 
