
# I worked on this challenge by myself
# This challenge took me [#] hours.


# Pseudocode
# fizzbuzz
# input: number
# output: word or number
# steps
#   IF number is divisible by 15, return FizzBuzz
#   ELSE if number is divisibile by 5,  return Buzz
#   ELSE if number is divisibile by 3,  return Fizz
#   ELSE return original number


# super_fizzbuzz
# input: array
# output: array
# steps:
# For each number in array
#  add to new_array fizzbuzz number
# end For
# return


# Initial Solution

# def super_fizzbuzz(array)
#   new_array = []
#   array.each do |number|
#     new_array << fizzbuzz(number)
#   end
#   new_array
# end

# def fizzbuzz(number)
#   if number % 15 == 0
#     "FizzBuzz"
#   elsif number % 5 == 0
#     "Buzz"
#   elsif number % 3 == 0
#     "Fizz"
#   else
#     number
#   end
# end




# Refactored Solution

def super_fizzbuzz(array)
  new_array = []
 array.each do |number|
    new_array << fizzbuzz(number)
  end
  new_array
end

def fizzbuzz(number)
  if number % 15 == 0
    "FizzBuzz"
  elsif number % 5 == 0
    "Buzz"
  elsif number % 3 == 0
    "Fizz"
  else
    number
  end
end






# Reflection









# Introduction to Inheritance

# I worked on this challenge [by myself, with: ].


# Pseudocode GlobalCohort
# Method: initialize
# Input: Name, start date
# Output: a cohort is created
# steps:
# sets date of immersive_start_date to start_date + 7*9
# set graduation_date to start_date + 7*18

# Method: add_student
# input: student
# output:
#Steps: Add student to list students

# Method: remove_student
# input: student
# output:
# Steps: Find Student on list students
# delete from list students

# Method: currently_in_phase
# input: nothing
# output: phase number.
# if




# # Initial Solution

# class GlobalCohort
#     attr_accessor :name
#     attr_accessor :students
#     attr_accessor :p0_start_date
#     attr_accessor :immersive_start_date
#     attr_accessor :graduation_date







# end

# class LocalCohort < GlobalCohort
#   attr_accessor :city

# end

# class Student
#   attr_accessor :name
#   attr_accessor :email
# end


# # Refactored Solution





# # Reflection
