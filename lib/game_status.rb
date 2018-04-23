# Helper Method
require 'pry'
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant
WIN_COMBINATIONS = [
  [0,1,2],
  [3,4,5],
  [6,7,8],https://learn.co/tracks/full-stack-web-development-v3/intro-to-ruby-development/ruby-tic-tac-toe/tic-tac-toe-game-status#
  [0,3,6],
  [1,4,7],
  [2,5,8],
  [0,4,8],
  [6,4,2]
]

def won?(board)
  WIN_COMBINATIONS.each do |sub_array|
    if sub_array.all? {|value| board[value] == "X"} || sub_array.all? {|value| board[value] == "O"}
      return sub_array
    end
  end
  false
end

def full?(board)
  board.all?{|token| token == "X" || token == "O"}
end

def draw?(board)
  !won?(board) && full?(board)
end