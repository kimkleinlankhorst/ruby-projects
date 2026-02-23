# Class for player that needs human input
class HumanPlayer < Player
  def select_position
    @game.print_board
    loop do
      print "Human #{marker} select your position: "
      selection = gets.to_i
      return selection if @game.free_positions.include?(selection)

      puts "Position #{selection} is not available. Try again."
    end
  end

  def to_s
    'Human'
  end
end
