# A Nested Array to Model a Bingo Board SOLO CHALLENGE

# I spent [#] hours on this challenge.


# Release 0: Pseudocode
# Outline:

# Create a method to generate a letter ( b, i, n, g, o) and a number (1-100)
  #fill in the outline here

# Check the called column for the number called.
  #fill in the outline here

# If the number is in the column, replace with an 'x'
  #fill in the outline here

# Display a column to the console
  #fill in the outline here

# Display the board to the console (prettily)
  #fill in the outline here

# Initial Solution

class BingoBoard

  def initialize(board)
    @bingo_board = board
    @letters = ['B','I','N','G','O']
    @numbers = rand(46..47)
  end

  def welcome
    puts "Welcome to an exciting game of Bingo!"
  end

  def draw
    puts "The first number drawn is..."

    @letter = @letters.sample

    if @letter == @letters[0]
      @number = @numbers

    elsif @letter == @letters[1]
      @number = @numbers
  
    elsif @letter == @letters[2]
      @number = @numbers

    elsif @letter == @letters[3]
      @number = @numbers 

    else @letter == @letters[4]
      @number = @numbers
    end
  
    print @letter
    puts @number.to_s
  end

  def cross_off
    if @letter == 'B'
      for subarray in @bingo_board
        if subarray[0].to_s == @number
          subarray[0] = 'X'
      
        end
      end
  
  elsif @letter == 'I'
      for subarray in @bingo_board
        if subarray[1].to_s == @number
          subarray[1] = 'X'
      
        end
      end

  elsif @letter == 'N'
      for subarray in @bingo_board
        if subarray[2].to_s == @number
          subarray[2] = 'X'
      
        end
      end

  elsif @letter == 'G'
      for subarray in @bingo_board
        if subarray[3].to_s == @number
          subarray[3] = 'X'
      
        end
      end
  
  elsif @letter == 'O'
      for subarray in @bingo_board
        if subarray[4].to_s == @number
          subarray[4] = 'X'
      
        end
      end 

  end
end

def column
  column_b = [@bingo_board[0][0], @bingo_board[1][0], @bingo_board[2][0], @bingo_board[3][0], @bingo_board[4][0]]
  puts "Column B contains..."
  puts column_b
end

def game_board

    puts "B  I  N  G  O"
    @bingo_board[0].each do |number|
      print number
      print " "
    end
    puts ""

    @bingo_board[1].each do |number|
      print number
      print " "
    end
    puts ""
    
    @bingo_board[2].each do |number|
      print number
      print " "
    end
    puts ""
    
    @bingo_board[3].each do |number|
      print number
      print " "
    end
    puts ""
    
    @bingo_board[4].each do |number|
      print number
      print " "
    end
    puts ""
  
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
new_game.welcome
new_game.column
new_game.draw
new_game.cross_off
new_game.game_board


#Reflection