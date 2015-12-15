
# A Nested Array to Model a Bingo Board SOLO CHALLENGE

# I spent [#] hours on this challenge.


# Release 0: Pseudocode
# Outline:

# Create a method to GENERATE A LETTER ( b, i, n, g, o) and a number (1-100)
  #fill in the outline here
#   generate a random number from 0-4
#   based on that, pull a letter from b to o
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
  # right now, just return as array of arrays

# Initial Solution

class BingoBoard

  def initialize(board)
    @bingo_board = board
  end

  def call
    letter = "BINGO"[rand(5)]
    number = rand(100) + 1
    [letter, number]
  end

  def check (array)
    row = "BINGO".index(array[0])
    number = array[1]
    if @bingo_board[row].include?(number)
      @bingo_board[row][@bingo_board[row].index(number)] = "X"
      print (array[0]) + "   "
      @bingo_board[row].each {|item| print item.to_s.ljust(4)}
      print "\n"
  end

  end

  def display_board
    24.times{print "-"}
    print "\n"
    @bingo_board.each_with_index do |row,index|
      print "BINGO"[index] + "   "
      row.each {|item| print item.to_s.ljust(4)}
      print "\n"
    end
    24.times{print "-"}
    print "\n"
  end


end

# Refactored Solution



#DRIVER CODE (I.E. METHOD CALLS) GO BELOW THIS LINE
board = [[47, 44, 71, 8, 88],
        [22, 69, 75, 65, 73],
        [83, 85, 97, 89, 57],
        [25, 31, 96, 68, 51],
        [75, 70, 54, 80, 83]]
new_game = BingoBoard.new(board)
new_game.display_board
sleep 0.8
puts "--- Checking 100 Numbers ----"
100.times {new_game.check(new_game.call)}
sleep 0.8
puts "--- Printing New Board ----"
new_game.display_board
#Reflection

