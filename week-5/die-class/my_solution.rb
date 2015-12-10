# Die Class 1: Numeric

# I worked on this challenge [by myself

# I spent [] hours on this challenge.

# 0. Pseudocode

# Input:
# Output:
# Steps:


# 1. Initial Solution

class Die
  def initialize(sides)
    if sides <1
      raise ArgumentError.new ("Dice need at least 1 side.")
    end
    @sides = sides
  end

  def sides
    @sides
  end

  def roll
    rand(@sides)+1
  end
end



# 3. Refactored Solution







# 4. Reflection

#What is an ArgumentError and why would you use one?
#What new Ruby methods did you implement? What challenges and successes did you have in implementing them?
#What is a Ruby class?
#Why would you use a Ruby class?
#What is the difference between a local variable and an instance variable?
#Where can an instance variable be used?