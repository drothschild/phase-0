# Pad an Array

# I worked on this challenge Mikhal

# I spent 1 hours on this challenge.


# Complete each step below according to the challenge directions and
# include it in this file. Also make sure everything that isn't code
# is commented in the file.



# 0. Pseudocode

# What is the input? array, a minimum sized value, and a default value
# What is the output? return the original array
# What are the steps needed to solve the problem?
# min_size is less than the array size
# if it is not, return the array.
# otherwise take the difference of min_size minus the array size and add the value that many times to the end of the array.
# return the original array

# What is the input? array, a minimum sized value, and a default value
# What is the output? new_array
# What are the steps needed to solve the problem?
# new_array equals values of array
# if min_size is less than the array_size
#  return new_array
# else
#   pad_size = min_size - array_size
#   loop pad_size times
#     shovel value into array
#   END LOOP
#   return new_array
# END IF


# 1. Initial Solution
# def pad!(array, min_size, value = nil) #destructive
#   if min_size <= array.count
#     return array
#   else
#     pad_size = min_size - array.count
#     pad_size.times {array << value}
#     return array
#   end
# end

# def pad(array, min_size, value = nil) #non-destructive
#   new_array = []
#   array.each {|item| new_array << item}
#   if min_size <= new_array.count
#     return new_array
#   else
#     pad_size = min_size - new_array.count
#     pad_size.times {new_array << value}
#     return new_array
#   end
# end


# 3. Refactored Solution
def pad!(array, min_size, value = nil) #destructive
   (min_size - array.count).times {array << value}
   array
end

def pad(array, min_size, value = nil) #non-destructive
  new_array = []
  new_array.concat(array)
    (min_size - new_array.count).times {new_array << value}
  new_array
end


# Were you successful in breaking the problem down into small steps?
# Yes, though it didn't need to be broken down that much
# Once you had written your pseudocode, were you able to easily translate it into code? What difficulties and successes did you have?
#  Prety easily. We got some of the grammar of Ruby wrong at first, brackets rather than parenthesis, shovel the wrong way. but it worked as said.
# Was your initial solution successful at passing the tests? If so, why do you think that is? If not, what were the errors you encountered and what did you do to resolve them?
# Again, there were grammars errors the first time, but we resolved them within a few minutes. Then it passed all the tests.
# When you refactored, did you find any existing methods in Ruby to clean up your code?
# concat was slightly better than looping and shovelling the values into new array. But mainly, we removed unnecssary code.
# How readable is your solution? Did you and your pair choose descriptive variable names?
# I think it's readable. There's only one variable in the refactored solution that wasn't given in the initial assignment
# What is the difference between destructive and non-destructive methods in your own words?
# Destructive changes the variable inputted into the method. Non-destructive creates a new method and returns that.
