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



# https://github.com/drothschild/phase-0/blob/master/week-4/math/my_solution.rb
# https://github.com/drothschild/phase-0/blob/master/week-4/define-method/my_solution.rb
# https://github.com/drothschild/phase-0/blob/master/week-4/address/my_solution.rb

# How do you define a local variable?
# var = value

# How do you define a method?
#   def method
#   end
# What is the difference between a local variable and a method?
# a method takes input and (possibly) returns something. A local variable is just something set and is inaccessible from other files.
# How do you run a ruby program from the command line?
#   ruby program_name
# How do you run an RSpec file from the command line?
#   rspec rspec_program_name
# What was confusing about this material? What made sense?
# It all pretty much made sense to me.
