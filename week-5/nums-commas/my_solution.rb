# Numbers to Commas Solo Challenge

# I spent [2] hours on this challenge.

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.

# 0. Pseudocode

# What is the input? a positive integer integer
# What is the output? (i.e. What should the code return?) a comma separated string
# What are the steps needed to solve the problem?
# convert the number into a str
#
  # LOOP while string length is greater than 0
   #IF str.length/ 3 > 0
      #separate_comma equals itself prepending "," and from (3 characters from the end of string to the end of the string)
#     cut those three characters off the end of the string.
  #ELSE
    # separate.comma equals itself prepending string
  #END IF
  #return separate_comma


# return a string

# 1. Initial Solution
 #  def separate_comma(number)
 #    string = number.to_s
 #    separate_comma = ""
 #    while string.length > 0
 #      if string.length > 3
 #        separate_comma.prepend( "," + string.slice!(string.length - 3, string.length))
 #      else
 #        separate_comma.prepend ( string.slice!(0, string.length))
 #      end
 #    end
 #     separate_comma
 # end
# 2. Refactored Solution
  def separate_comma(number)
    string = number.to_s
    separate_comma = ""
    loop do
      if string.length > 3
        separate_comma.prepend( "," + string.slice!(string.length - 3, string.length))
      else
       return separate_comma.prepend ( string.slice!(0, string.length))
      end
    end
 end




# 3. Reflection
# What was your process for breaking the problem down? What different approaches did you consider?
# I knew I needed to place something every three characters, and I wanted to work in the string backwards. I initially wanted to work with an array,
# Was your pseudocode effective in helping you build a successful initial solution?
# Yes- I would have been fiddling with arrays otherwise
# What new Ruby method(s) did you use when refactoring your solution? Describe your experience of using the Ruby documentation to implement it/them (any difficulties, etc.). Did it/they significantly change the way your code works? If so, how?
# I didn't use a new ruby method, unless you count substituting loop for while. I could use the insert method, but that would add complexity. To be honest, I looked up slice(which I sort of knew, but not the exact details of ) and prepend while working on the initial thing. I could have worked without prepend, but definitely not without slice.
# How did you initially iterate through the data structure?
# A while loop and using slice to cut the length of the string.

# Do you feel your refactored solution is more readable than your initial solution? Why?
# yes- the loop makes more sense. And returning when the length is less than 3 cuts down on the complexity.