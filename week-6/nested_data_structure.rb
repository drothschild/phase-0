# RELEASE 2: NESTED STRUCTURE GOLF
# Hole 1
# Target element: "FORE"

array = [[1,2], ["inner", ["eagle", "par", ["FORE", "hook"]]]]

# attempts:
# ============================================================
p array[1][1][2][0]


# ============================================================

# Hole 2
# Target element: "congrats!"

hash = {outer: {inner: {"almost" => {3 => "congrats!"}}}}

# attempts:
# ============================================================
p hash[:outer][:inner]["almost"][3]


# ============================================================


# Hole 3
# Target element: "finished"

nested_data = {array: ["array", {hash: "finished"}]}

# attempts:
# ============================================================
p nested_data[:array][1][:hash]


# ============================================================

# RELEASE 3: ITERATE OVER NESTED STRUCTURES

number_array = [5, [10, 15], [20,25,30], 35]
number_array.map! do |element|
  if element.kind_of?(Array)
    element.map! {|i| i+= 5}
  else
    element += 5
  end
end
  p number_array



# Bonus:

startup_names = ["bit", ["find", "fast", ["optimize", "scope"]]]

def startup_name_generator (array)
  array.map! do |element|
    if element.kind_of?(String)
      element += "ly"
   else
      startup_name_generator (element)
    end
  end
end
p startup_name_generator(startup_names)

=begin
What are some general rules you can apply to nested arrays?
The nested elements are always accessible if you call correctly.

What are some ways you can iterate over nested arrays?
Using the method.kind_of? allows you to determine if you're already in an array.


Did you find any good new methods to implement or did you re-use one you were already familiar with? What was it and why did you decide that was a good option?
We used a recursive method for the final bonus problem, which we hadn't tried before. It seemed the only way to avoid simply nesting maps.
=end

