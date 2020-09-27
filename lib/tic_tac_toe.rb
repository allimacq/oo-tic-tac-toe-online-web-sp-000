class TicTacToe
  attr_accessor :board, :index
  
  def initialize
    @board = [" ", " ", " ", " ", " ", " ", " ", " ", " "]
  end
  
  WIN_COMBINATIONS = [
    [0,1,2], #top row win
    [3,4,5], #middle row win
    [6,7,8], #bottom row win
    [0,4,8], #left diagonal win
    [2,4,6], #right diagonal win
    [0,3,6], #left column win
    [1,4,7], #middle column win
    [2,5,8] #right column win
    ]

  def display_board
    row_one = " #{@board[0]} | #{@board[1]} | #{@board[2]} "
    dashes =  "-----------"
    row_two = " #{@board[3]} | #{@board[4]} | #{@board[5]} "
    row_three = " #{@board[6]} | #{@board[7]} | #{@board[8]} "
    
    #printing the updated board
    puts row_one
    puts dashes
    puts row_two
    puts dashes
    puts row_three
  end

  
  def input_to_index(input)
    @index = input.to_i - 1
  end
  
  def move(index, character)
    @board[index] = character
  end

  # determing if the position has been taken
  def position_taken?(index)
    if @board[index] == " " || @board[index] == ""
      p false
      elsif @board[index] == nil
        p false
      elsif @board[index] == "X" || @board[index] == "O"
        p true
    end
  end

  # making sure the user plays on the board
  def valid_move?(index)
    #this first if statement is checking if the index is on the board and if the position has been taken
    if index.between?(0,8) && position_taken?(index) == false
      p true
    elsif index > 9 || index < 0
      p false
    elsif position_taken?(index) == true
      p false
    end
  end

  #returns the number of turns that have been played
  def turn_count
    #using the count method to count how many X's and O's are in the board array
    x = @board.count("X")
    o = @board.count("O")
    #adding the X's and O's together
    turn = x + o
    #we want the return value to be a number, so we use return
    p turn
  end

  #tells you whose turn it is
  def current_player
    if turn_count(@board) % 2 == 0
      p "X"
    else
      p "O"
    end
  end


end