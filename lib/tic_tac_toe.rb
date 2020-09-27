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
  
  def move(@board, @index, character)
  board[index] = character
end








end