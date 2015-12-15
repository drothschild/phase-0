
# A Nested Array to Model a Bingo Board SOLO CHALLENGE

# I spent [2.5] hours on this challenge.


# Release 0: Pseudocode
# Outline:

# Create a method to GENERATE A LETTER ( b, i, n, g, o) and a number (1-100)
#   generate a random number from 0-4
#   based on that, pick a letter from b to o
#   generate a random number from 1-100
#   Print and return letter and Integer

# CHECK THE CALLED COLUMN (Letter, integer) for the number called, and check off.

  # Based on letter, go to a row
  # IF integer exists in row
  #   Replace integer with x
  # Display the column

# DISPLAY A COLUMN to the console based on letter called.
  # Based on letter, go to a row
  # Print out the row

# Display the board to the console (prettily)
  #fill in the outline here
  # print each row.

# Initial Solution

# class BingoBoard

#   def initialize(board)
#     @bingo_board = board
#   end

#   def call
#     letter = "BINGO"[rand(5)]
#     number = rand(100) + 1
#     [letter, number]
#   end

#   def check (array)
#     row = "BINGO".index(array[0])
#     number = array[1]
#     if @bingo_board[row].include?(number)
#       @bingo_board[row][@bingo_board[row].index(number)] = "X"
#       print (array[0]) + "   "
#       @bingo_board[row].each {|item| print item.to_s.ljust(4)}
#       print "\n"
#   end


  # def display_board
  #   24.times{print "-"}
  #   print "\n"
  #   @bingo_board.each_with_index do |row,index|
  #     p t "BINGO"[index] + "   "
  #     row.each {|item| print item.to_s.ljust(4)}
  #     print "\n"
  #   end
  #   24.times{print "-"}
  #   print "\n"
  # end

# end

# Refactored Solution
class BingoBoard

  def initialize(board)
    @bingo_board = board
  end

  def call
    letter = "BINGO"[rand(5)]
    number = rand(100) + 1
    [letter, number]
  end

  def display_row (row_number)
    print "BINGO"[row_number] + "   "
    @bingo_board[row_number].each {|item| print item.to_s.ljust(4)}
    print "\n"
  end

  def check (array)
    row = "BINGO".index(array[0])
    number = array[1]
    if @bingo_board[row].include?(number)
      @bingo_board[row][@bingo_board[row].index(number)] = "X"
      display_row(row)
    end
   end



  def display_board
    22.times{print "-"}
    print "\n"
    @bingo_board.each_index {|row_number| display_row(row_number)}
    22.times{print "-"}
    print "\n"
  end

end





#DRIVER CODE (I.E. METHOD CALLS) GO BELOW THIS LINE
board = [[47, 44, 71, 8, 88],
        [22, 69, 75, 65, 73],
        [83, 85, 97, 89, 57],
        [25, 31, 96, 68, 51],
        [75, 70, 54, 80, 83]]
new_game = BingoBoard.new(board)
new_game.display_board
sleep 0.8
puts "-- Checking 100 Numbers --"
100.times {new_game.check(new_game.call)}
sleep 1.8
puts "-- Printing New Board --"
new_game.display_board
#Reflection

# How difficult was pseudocoding this challenge? What do you think of your pseudocoding style?
# It was definitely difficult, though not too difficult.
# I realized I didn't think through the display of rows well when it came to coding

# What are the benefits of using a class for this challenge?
# The storing of the the board inside the class instance is definitely the big advantage.

# How can you access coordinates in a nested array?
# [array][nested_array]

# What methods did you use to access and modify the array?
# index, each

# Give an example of a new method you learned while reviewing the Ruby docs. Based on what you see in the docs, what purpose does it serve, and how is it called?
#  ljust
#  it returns the string padded to an integer length(by default with Spaces). Would have taken a lot of work to code that for myself
#  string.ljust(integer, padstr=' ') → new_str

# How did you determine what should be an instance variable versus a local variable?
# I made everything new a local variable, because it kept the methods flexible.
# I could have made the combination returned by call an instance variable, but then the check method could only check that.
# The board makes sense as an instance variable, since it's being changed each time.
# I suppose if it were a true bingo solution, and each letter-number combination could only be called once, then it would make sense to make an instance array of called combos

# What do you feel is most improved in your refactored solution?
# the refactored solution spins printing a row off into its own method.
# And that cuts down on the repeated code.

