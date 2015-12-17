# Class Warfare, Validate a Credit Card Number


# I worked on this challenge [by myself, with: ].
# I spent [#] hours on this challenge.

# Pseudocode
# INITIALIZATION
# Input: 16 digit number
# Output:
# Steps:
#  IF Length is greater or less than 16, return error.
#  Split this into an @cc_array
#

# Pseudocode
# DOUBLE EVERY OTHER DIGIT
# Input: @cc_array
# Output: @cc_array
# Steps:
# LOOP Through @cc_array
# IF index number is even, double the number
# END LOOP


# Pseudocode
# SPLIT INTO SINGLE DIGITS
# Input: @cc_array
# Output: @cc_array
# Steps: Turn the array back into a string
# Split the string by character into an array

#
# CHECK CARD
# Input :
# Output: true/false
#  Run DOuble every other digit on ccarray
# Split into Single Digits
# if sum of array / 10 has a remainder of 0, return true
# ELSE return false.

# Pseudocode
#




# Don't forget to check on initialization for a card length
# of exactly 16 digits

# class CreditCard

#   def initialize (number)
#     if number.to_s.length != 16
#       raise ArgumentError.new ("Credit Card Numbers are 16 digits")
#     end
#     @cc_array = number.to_s.split(//)
#   end

#   attr_reader :cc_array


#   def double_every_other_digit
#     @doubled_array = []
#     @cc_array.each_with_index do |n, i|
#      n =  n.to_i
#       if i % 2 == 0
#         @doubled_array << (n * 2)

#       else
#         @doubled_array << n
#       end
#     end
#     @doubled_array
#   end

#   def splitter
#     @cc_array = @doubled_array.join.split(//)
#     @cc_array.map! {|i| i.to_i}
#   end

#   def check_card
#     double_every_other_digit
#     splitter

#     if @cc_array.inject{|sum,n|  n.to_i + sum } % 10 == 0
#       true
#     else
#       false
#     end
#   end
# end

# Refactored Solution

class CreditCard

  def initialize (number)
    if number.to_s.length != 16
      raise ArgumentError.new ("Credit Card Numbers are 16 digits")
    end
    @cc_array = number.to_s.split(//).map! {|i| i.to_i}
  end

  def doubler (arr)
    doubled_array = []
    arr.each_with_index do |n, i|
      if i % 2 == 0
        doubled_array << (n * 2)

      else
        doubled_array << n
      end
    end
    doubled_array
  end

  def splitter (arr)
    split_array = arr.join.split(//)
    split_array.map! {|i| i.to_i}
  end

  def check_card
    arr = splitter(doubler(@cc_array))
    if arr.inject{|sum,n|  sum +n } % 10 == 0
      true
    else
      false
    end
  end
end

# Reflection
# What was the most difficult part of this challenge for you and your pair?
# Changing things from strings to arrays to integers and back again.
# What new methods did you find to help you when you refactored?
# no new methods, but map
# What concepts or learnings were you able to solidify in this challenge?

# It's not in the final version, but accessor methods were solidified.
