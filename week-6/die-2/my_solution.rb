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
    raise ArgumentError.new ("Dice need at least one side") if labels.count < 1
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
# What were the main differences between this die class and the last one you created in terms of implementation? Did you need to change much logic to get this to work?
# The main difference was the addition of an array of labels
# What does this exercise teach you about making code that is easily changeable or modifiable?
# The code in the previous challenge was solid, if I do say so myself, so it was easy to redo in this example
# What new methods did you learn when working on this challenge, if any?
# No new methods.
# What concepts about classes were you able to solidify in this challenge?
# Instance variabls are different from local variables.
