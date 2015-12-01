puts 'What\'s your first name?'
first_name = gets.chomp
puts 'What\'s your middle name?'
middle_name = gets.chomp
puts 'What\'s your last name?'
last_name = gets.chomp
puts 'Hello, ' + first_name + ' ' + middle_name + ' ' +last_name + '.'
puts 'What\'s your favorite number?'
fav_number = gets.chomp
better_number = fav_number.to_i + 1
puts 'No, it should be ' + better_number.to_s + '.'
