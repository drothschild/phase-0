# Your Names
# 1) David Rothschild
# 2)

# We spent [#] hours on this challenge.

# Bakery Serving Size portion calculator.


# 2 stages of refactoring
# - Readability
# - logic / redudnancy


# ingredients_per_dish


def serving_size_calc(item_to_make, num_of_ingredients)
  ingredients_per_dish = {"cookie" => 1, "cake" =>  5, "pie" => 7}

  # Checks if item exists in library. If it doesn't, raise an Argument Error
  # Refactor: Change error check to includes?
  unless ingredients_per_dish.include?(item_to_make)
    raise ArgumentError.new("#{item_to_make} is not a valid input")
  end

#   error_counter = 3

#   ingredients_per_dish.each do |dish|
#     if ingredients_per_dish[dish] != ingredients_per_dish[item_to_make]

#       error_counter += -1
#     end
#   end

#   if error_counter > 0
#     raise ArgumentError.new("#{item_to_make} is not a valid input")
#   end
  # Refactor: change to just calling the value of the key (item_to_make)
  serving_size = ingredients_per_dish.values_at(item_to_make)[0]
  # Where have you see [0] before?
  # - Arrays

  # my_array[0] => returns first element in the array.

  # Can you have duplicate keys in a hash?
  # - no
  # Therefore we will always have a single element array

  # ["apple"][0] => "apple"
  # [5][0] => 5

  # So essentially what this is doing, is converting the single element array into an integer.

  # Figures out  how many times number of ingredients goes into Serving size
  # If there is a remainder include that on leftover ingredients
  #
   leftover_ingredients = num_of_ingredients % serving_size
  # Refactor to IF, move duplicate first sentence outside of if statement.
  #  If remainder then add to return string.

#   return_string = "xyz"

#   if something_is_true
#     return_string += "additional"
#   end

#   return return_string

    return_string = "Calculations complete: Make #{num_of_ingredients / serving_size} of #{item_to_make}."
  return_string += "You have #{leftover_ingredients} leftover ingredients.  Suggested baking: #{leftover_ingredients} cookies." if leftover_ingredients > 0
    return_string

#   case  leftover_ingredients
#   when 0

#     return "Calculations complete: Make #{num_of_ingredients / serving_size} of #{item_to_make}"
#   else
#     return "Calculations complete: Make #{num_of_ingredients / serving_size} of #{item_to_make}, you have #{leftover_ingredients} leftover ingredients." # Suggested baking items: TODO: MAKE THIS FEATURE"
#   end
end

# DRIVER CODE:
# ------------

puts
p serving_size_calc("pie", 7)

puts
p serving_size_calc("pie", 8)

puts
p serving_size_calc("cake", 5)

puts
p serving_size_calc("cake", 7)

puts
p serving_size_calc("cookie", 1)

puts
p serving_size_calc("cookie", 10)

# p serving_size_calc("THIS IS AN ERROR", 5)

#  Reflection
