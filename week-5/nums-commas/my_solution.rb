# Numbers to Commas Solo Challenge

# I spent [] hours on this challenge.

# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.

# 0. Pseudocode

# What is the input? a positive integer integer
# What is the output? (i.e. What should the code return?) a comma separated string
# What are the steps needed to solve the problem?
# take a positive integer as input
# convert the number into a str
#
  # LOOP while str.length is greater than 0
   #IF str.length/ 3 > 0
      #separate.comma equals itself prepending "," and from (3 characters from the end of string to the end of the string)
  #ELSE
    # separate.comma equals itself prepending string
  #END IF
  #return separate_comma


# return a string

# 1. Initial Solution
  def separate_comma(n)
    string = n.to_s
    separate_comma = ""
    while string.length > 0
      if string.length > 3
        separate_comma.prepend( "," + string.slice!(string.length - 3, string.length))
      else
        separate_comma.prepend ( string.slice!(0, string.length))
      end
    end
     separate_comma
 end



# 2. Refactored Solution




# 3. Reflection