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
#LOOP Through hash and find largest value and create array with key
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

def mode (array)
  h = Hash.new
  array.each {|e| h[e] = array.count(e)}
  h.select {|e,v| v == h.values.max}.keys
end


# 4. Reflection