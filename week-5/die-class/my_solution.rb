# Die Class 1: Numeric

# I worked on this challenge [by myself

# I spent [.5] hours on this challenge.

# 0. Pseudocode
# INITIALIZE
# Input: sides
# Output: nothing
# Steps:

#   Create Die
#   IF sides are less than 1, return error
# set sides to sides of new die.

#SIDES
# Input: nothing
# output: a number
# Steps: output the number of sides of the die.

# ROLL
# Input: nothing
# Output: a number
# Steps: Return a random number, from one to Sides of Die.
#


# 1. Initial Solution

# class Die
#   def initialize(sides)
#     if sides <1
#       raise ArgumentError.new ("Dice need at least 1 side.")
#     end
#     @sides = sides
#   end

#   def sides
#     @sides
#   end

#   def roll
#     rand(@sides)+1
#   end
# end



# 3. Refactored Solution

class Die
  def initialize(sides)
 raise ArgumentError.new ("Dice need at least 1 side.") if sides < 1
    @sides = sides
  end

  def sides
    @sides
  end

  def roll
    rand(@sides)+1
  end
end





# 4. Reflection

#What is an ArgumentError and why would you use one?
# ArgumentError- you raise it when the argument for the method is wrong.
#What new Ruby methods did you implement? What challenges and successes did you have in implementing them?
# Raise. It worked pretty much from the start.
#What is a Ruby class?
#A class is a factory(or blueprint) for producing objects. It also stores class variables and methods that help it manage those objects.
#Why would you use a Ruby class?
# To create an object. And to store methods for said object.
#What is the difference between a local variable and an instance variable?
# Local variables start with a lowercase letter and only live as long as a method is running. Instance variables are stored with each instance variable of an object.
#Where can an instance variable be used?
# it can be used inside the method/or class.