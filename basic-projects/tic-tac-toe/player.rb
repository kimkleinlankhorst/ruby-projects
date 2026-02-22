# Represents one of the two players for the game
class Player
  def initialize(game, marker)
    @game = game
    @marker = marker
  end
  attr_reader :marker
end
