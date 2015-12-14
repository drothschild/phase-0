# Die Class 2: Arbitrary Symbols


# I worked on this challenge [by myself, ].
# I spent [#] hours on this challenge.

# Pseudocode
#Die Initialize
# Input: a list of labels
# Output: nothing
# Steps:
# if count of labels is less than one, return error
# create that die.
# assign label array
# assign sides number of labels
#SIDES
# Input: nothing
# Output: sides
# Steps: Output number of sides
#ROLL
#Input: Nothing
#Output: a random label
# Steps:
# roll random based on number of sides
# Return corresponding label


# Initial Solution

# class Die
#   def initialize(labels)
#     raise ArgumentError.new ("Dice need at least one side") if labels.count == 0
#     @labels = labels
#     @sides = labels.count
#  end

#   def sides
#     @sides

#   end

#   def roll
#     rando =rand(@sides)
#     @labels[rando]
#   end
# end



# Refactored Solution
class Die
  def initialize(labels)
    raise ArgumentError.new ("Dice need at least one side") if labels.count == 0
    @labels = labels
    @sides = @labels.count
  end

  def sides
    @sides
  end

  def roll
    @labels[rand(@sides)]
  end
end







# Reflection
