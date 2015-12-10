# Calculate the mode Pairing Challenge

# I worked on this challenge [by myself, with: ]

# I spent [] hours on this challenge.

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented.



# 0. Pseudocode

# What is the input? an array of numbers or strings
# What is the output? an array of the element(s) with the most occurences or the entire array if occurences are equal
# What are the steps needed to solve the problem?
# Create a hash (hash)
#LOOP Through the array
# IF the element of the array  already exists as a key, add 1 to its value.
# ELSE Make a new key(element) with the value of 1.
# END Loop
#
#LOOP Through hash and find largest value and create array with
# HASH.max values
# Create an array with key
# Output array

# 1. Initial Solution
# def mode (array)
#   hash = {}
#   array.each do |e|
#     if hash.include?(e)
#       hash[e] += 1
#     else
#       hash[e] = 1
#     end
#   end
#   # max_hash = hash.max_by {|e,v| v}
#   max = hash.values.max
#    hash.select! {|e,v| v == max}
#   return hash.keys
# end





# 3. Refactored Solution

def mode (a)
  h = Hash.new
  a.each {|e| h[e] = a.count(e)}
  h.select {|e,v| v == h.values.max}.keys
end


# 4. Reflection

#Which data structure did you and your pair decide to implement and why?
# A hash, frankly because the instructions hinted at it so heavily. (And then an array again to return.)

#Were you more successful breaking this problem down into implementable pseudocode than the last with a pair?
# Actually I think I did better the last time. This broke down in the second half.

#What issues/successes did you run into when translating your pseudocode to code?
# Figuring the right code for max was difficult.

#What methods did you use to iterate through the content? Did you find any good ones when you were refactoring? Were they difficult to implement?

# each, and select were used at both stages, and I'm pretty comfortable with both, though each We attempted to work with max_by, but we misunderstood that one(It only returns a key value pair of one maximum, not several that are the same)