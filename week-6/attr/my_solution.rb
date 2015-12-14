#Attr Methods

# I worked on this challenge [by myself, with:]

# I spent [#] hours on this challenge.

# Pseudocode
# NAME

# Input:nothing
# Output:nothing
# Steps:
#set name to david

class NameData
  attr_reader :name
  def initialize
    @name = "David"
  end
end

# Pseudocode
# INITIALIZE
# Input: nothing
# Output:nothing
# Steps:
# create a new NameData instance called student.

#HELLO
# Input: nothing
# Output: a greeting string
# Steps:
# Write a string greeting student's name
class Greetings
  def initialize
    @student = NameData.new
  end
  def hello
    puts "Hello #{@student.name}! How wonderful to see you today."
  end

end
#Pilot Code:
greet = Greetings.new
greet.hello


# Reflection

# Release 1.
#What are these methods doing?
# they are either returning or modifying the instance variables of the class profile
#How are they modifying or returning the value of instance variables?
# Either simply returning the new variable or setting it to the local variable.
# Release 2:
# What changed between the last release and this release?
# what_is_age is replaced with attr reader :age
# Is this code simpler than the last?
# yes
# Release 3:
# What changed between the last release and this release?
# change_my_age is replaced with attr_writer :age
# Is this code simpler than the last?
# yes
# Release 6
#What is a reader method?
# a reader method reads an instance variable

#What is a writer method?
# a writer method writes to an instance variable

#What do the attr methods do for you?
# it's a shortcut to add those read/write methods for class variable

#Should you always use an accessor to cover your bases? Why or why not?
# No, because you don't always want to make reading and writing that easily accessible for all variables.

# What is confusing to you about these methods?
# It makes sense to me.