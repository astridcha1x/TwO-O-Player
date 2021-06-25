require_relative "player.rb"
require_relative "question.rb"

class Game

  attr_accessor :current_player, :player_one, :player_two

  def initialize()
    @player_one = Player.new
    @player_two = Player.new
    @current_player = player_one
  end

  def game_start

    while @player_one.score !=0 && @player_two.score !=0
      question = Questions.new
      question.get_question
      answer = question.get_answer

    if current_player.score != 0
      puts "Player One: #{player_one.score}/3 \n Player Two: #{player_two.score}/3"
      puts "- - - - - NEXT TURN - - - - -"
    end

    if current_player == player_one
      @current_player = player_two
    else
      @current_player = player_one
    end

    end

  winner()

  end

  def winner()
    puts "#{current_player} wins with #{current_player.score}/3 points!"
    puts "- - - - - GAME OVER - - - - - \n Thanks for Playing!"
  end

end
