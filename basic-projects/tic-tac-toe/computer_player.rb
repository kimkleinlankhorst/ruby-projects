# Class for computer player that randomly selects a free field
class ComputerPlayer < Player
  def select_position
    @game.print_board
    @game.free_positions.sample
  end

  def to_s
    'Computer'
  end
end
