# Build a simple guessing game


# I worked on this challenge by myself
# I spent [.25] hours on this challenge.

# Pseudocode
# INITIALIZE
# Input: answer integer
# Output: nothing
# Steps:
# set answer to instance variable answer
# set instance variable solved to false
# GUESS
# Input: guess integer
# Output: a symbol
# Steps:
# IF guess is greater than the answer return :high
# ELSE IF  guess is less than than the answer, return :low
# ELSE IF guess is correct, set solved to true
# and return :correct
#SOLVED
#Input: Nothing
#Output: True or false
# Steps:
# return solved.

class GuessingGame
  def initialize(answer)
    @answer = answer
    @solved = false
  end
  def guess(number)
    @solved = false
    if number < @answer
      :low
    elsif number > @answer
      :high
    elsif number == @answer
      @solved = true
      :correct
    end
  end

  def solved?
    @solved
  end
end





# Refactored Solution
# I honestly don't see a way to refactor this





# Reflection
# How do instance variables and methods represent the characteristics and behaviors (actions) of a real-world object?
# When should you use instance variables? What do they do for you?
# Explain how to use flow control. Did you have any trouble using it in this challenge? If so, what did you struggle with?
# Why do you think this code requires you to return symbols? What are the benefits of using symbols?

