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
      raise ArgumentError
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