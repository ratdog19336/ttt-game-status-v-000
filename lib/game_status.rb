# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

WIN_COMBINATIONS = [
  [0,1,2],
  [3,4,5],
  [6,7,8],
  [0,4,8],
  [0,3,6],
  [1,4,7],
  [2,5,8],
  [2,4,6]
]

def won?( board)
  WIN_COMBINATIONS.detect do |win_combination|
    if board[win_combination[0]] == "X" && board[win_combination[1]] =="X" && board[win_combination[2]] == "X"
      win_combination = win_combination
    elsif board[win_combination[0]] == "O" && board[win_combination[1]] =="O" && board[win_combination[2]] == "O"
      win_combination = win_combination
    else
      false
    end
  end
end


def full?( board)
  if board.count("X") + board.count("O") == 9
    true
  else
    false
  end
end

def draw?( board)
  if won?( board) == nil && full?( board) == true
    true
  else
    false
  end
end

def over?( board)
  if draw?( board)
    draw?( board)
  elsif full?(board)
    true
  else
    false
  end
end


def winner( board)
  if won?( board) == nil
    nil
  else
    winner = won?( board)
    if board[winner[0]] == "X" && board[winner[1]] =="X" && board[winner[2]] == "X"
      return "X"
    elsif board[winner[0]] == "O" && board[winner[1]] =="O" && board[winner[2]] == "O"
      return "O"
    else
      false
    end
  end
end
