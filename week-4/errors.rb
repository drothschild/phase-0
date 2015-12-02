# Analyze the Errors

# I worked on this challenge by myself.
# I spent [#] hours on this challenge.

# --- error -------------------------------------------------------

# "Screw you guys " + "I'm going home." = cartmans_phrase
cartmans_phrase = "Screw you guys " + "I'm going home."


# This error was analyzed in the README file.
# 1. What is the name of the file with the error?
# "Screw you guys " + "I'm going home." = errors.rb
# 2. What is the line number where the error occurs?
# 8
# 3. What is the type of error message?
# syntax error
# 4. What additional information does the interpreter provide about this type of error?
# unexpected '=', expecting end-of-input
# 5. Where is the error in the code?
# The interpreter did not expect an equals sign between "I'm going home" and cartmans_phrase.
# 6. Why did the interpreter give you this error?
# You can't write variable assignment that way. you need to reverse it.

# --- error -------------------------------------------------------

def cartman_hates(thing)
  while true
    puts "What's there to hate about #{thing}?"
  end
end

# This is a tricky error. The line number may throw you off.

# 1. What is the name of the file with the error?
#errors.rb
# 2. What is the line number where the error occurs?
#185
# 3. What is the type of error message?
#syntax error
# 4. What additional information does the interpreter provide about this type of error?
#unexpected end-of-input, expecting keyword_end
# 5. Where is the error in the code?
# # Write your reflection below as a comment.
# 6. Why did the interpreter give you this error?
# it's missing a secod "End"
#Error

# --- error -------------------------------------------------------

 south_park = "a decade past its prime"

# 1. What is the line number where the error occurs?
# errors.rb
# 2. What is the type of error message?
# NameError
# 3. What additional information does the interpreter provide about this type of error?
# undefined local variable or method `south_park' for main:Object
# 4. Where is the error in the code?
# <main>
# 5. Why did the interpreter give you this error?
# South_Park isn't defined as a variable yet.

# --- error -------------------------------------------------------

#cartman()

# 1. What is the line number where the error occurs?
# 67
# 2. What is the type of error message?
#NoMethodError
# 3. What additional information does the interpreter provide about this type of error?
#  undefined method `cartman' for main:Object
# 4. Where is the error in the code?
# <main>
# 5. Why did the interpreter give you this error?
#Like it says, cartman() is not a method.

# --- error -------------------------------------------------------

def cartmans_phrase
  puts "I'm not fat; I'm big-boned!"
end

cartmans_phrase()

# 1. What is the line number where the error occurs?
#82
# 2. What is the type of error message?
#ArgumentError
# 3. What additional information does the interpreter provide about this type of error?
# wrong number of arguments (1 for 0)
# 4. Where is the error in the code?
# cartmans_phrase
# 5. Why did the interpreter give you this error?
# cartmans_phrase takes no arguments

# --- error -------------------------------------------------------

def cartman_says(offensive_message)
  puts offensive_message
end

cartman_says ("something offensive")

# 1. What is the line number where the error occurs?
#101
# 2. What is the type of error message?
# ArgumentError
# 3. What additional information does the interpreter provide about this type of error?
#in `cartman_says': wrong number of arguments (0 for 1)
# 4. Where is the error in the code?
#  cartman_says
# 5. Why did the interpreter give you this error?
# there should be an argument for this phrase



# --- error -------------------------------------------------------

def cartmans_lie(lie, name)
  puts "#{lie}, #{name}!"
end

cartmans_lie('A meteor the size of the earth is about to hit Wyoming!', 'Stan')

# 1. What is the line number where the error occurs?
#  122
# 2. What is the type of error message?
# ArgumentError
# 3. What additional information does the interpreter provide about this type of error?
# wrong number of arguments (1 for 2) (ArgumentError)
#  from errors.rb:126:in `<main>'
# 4. Where is the error in the code?
# cartmans_lie
# 5. Why did the interpreter give you this error?
# Only 1 argument rather than 2

# --- error -------------------------------------------------------

"Respect my authoritay!" * 5

# 1. What is the line number where the error occurs?
#142
# 2. What is the type of error message?
# TypeError
# 3. What additional information does the interpreter provide about this type of error?
# TypeError String can't be coerced into Fixnum
# 4. Where is the error in the code?
# in `*'
# 5. Why did the interpreter give you this error?
# you cannot multiply a number by a string. You can however, multiply a string by a number. Also, I'm pretty sure it's 'authoritah'

# --- error -------------------------------------------------------

amount_of_kfc_left = 20/20


# 1. What is the line number where the error occurs?
# ZeroDivisionError
# 2. What is the type of error message?
# ZeroDivisionError
# 3. What additional information does the interpreter provide about this type of error?
# divided by 0
# 4. Where is the error in the code?
# in `/'
# 5. Why did the interpreter give you this error?
# You can't divide by zero.

# --- error -------------------------------------------------------

# require_relative "cartmans_essay.md"

# 1. What is the line number where the error occurs?
# 173
# 2. What is the type of error message?
# LoadError
# 3. What additional information does the interpreter provide about this type of error?
#
# 4. Where is the error in the code?
# LoadError cannot load such file -- /Users/drothschild/phase0/phase-0/week-4/cartmans_essay.md
# 5. Why did the interpreter give you this error?
#


# --- REFLECTION -------------------------------------------------------
# Write your reflection below as a comment.

# Which error was the most difficult to read?
# The missing end was a little hard.
# How did you figure out what the issue with the error was?
# I've made that error so many times, I recognized it pretty fast.
# Were you able to determine why each error message happened based on the code?
# Provided there are no follow-up questions, yes. (That's a Simpsons quote)
# When you encounter errors in your future code, what process will you follow to help you debug?
# I'll probably fix them on sight if they're easy, but this method is good if they're difficult to figure out. ON the other hand, line numbers are going to change a lot, so it may not be that useful all the time.