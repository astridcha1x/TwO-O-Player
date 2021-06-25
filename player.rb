require_relative "game.rb"

class Player

  attr_accessor :score

  @@number_of_players = 0

  def initialize()
    @score = 3
    @@number_of_players += 1
    @player_num = @@number_of_players
  end

  # if answer == false
  #   current_player.score -= 1
  # end

  # @@number_of_players = 0
  # def initialize()
  #   @score = 3
  #   @@number_of_players += 1
  #   @player_num = @@number_of_players
  # end

  def to_s
    "Player #{@player_num}"
  end

end