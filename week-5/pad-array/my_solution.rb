# Pad an Array

# I worked on this challenge [by myself, with: ]

# I spent [] hours on this challenge.


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
  if min_size >= array.count
   # pad_size = min_size - array.count
    (min_size - array.count).times {array << value}
  end
    array
end

def pad(array, min_size, value = nil) #non-destructive
  new_array = []
  # array.each {|item| new_array << item}
  new_array.concat(array)
  if min_size >= array.count
    pad_size = min_size - new_array.count
    pad_size.times {new_array << value}
  end
   new_array
end