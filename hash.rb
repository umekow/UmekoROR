s_hash = {"a" => 1, "b" => 2, 'c' => 3}

my_info = {'name' => 'Umeko', 'fav_show' => 'The Office', 'hobby' => 'sleep'}

p my_info['hobby']

sounds = {dog: 'woof!', cat: 'meow!', frog: 'ribbit!'}

p sounds.keys
p sounds.values 
sounds[:owl] = "Whooo!"

p sounds

sounds.each { |k, v| puts "A #{k} says #{v}"}

p my_info.select { |k, v| v == "sleep"}