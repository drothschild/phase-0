# Add it up!

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.

# I worked on this challenge with: Jillian Dunleavy].

# 0. total Pseudocode
# make sure all pseudocode is commented out!

# Input: an array
# Output: the total of the numers in the array
# Steps to solve the problem.


# 1. total initial solution
# set total = 0
#  to add 1st number to total, then 2nd number, 3rd number and so on

# def total(array)
#   # total = 0
#   # array.each {|a| total += a}
#   # total
#
# end


# 3. total refactored solution
def total(array)
  array.reduce (:+)
end


# 4. sentence_maker pseudocode
# make sure all pseudocode is commented out!
# Input: array
# Output: sentence
# Steps to solve the problem.
# input selection of words
#
# put a space in between each word and turn it into a string

# capitalize the first word
# return the string plus a "."

# 5. sentence_maker initial solution
def sentence_maker (array)
  sentence_maker = array.join(" ").capitalize

  # array.each  do |word|
  #   sentence_maker += word + " "
  # end
  # sentence_maker = sentence_maker.capitalize
  return sentence_maker + "."
end



# 6. sentence_maker refactored solution