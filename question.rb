require_relative "player.rb"

class Questions

  attr_accessor :num_one, :num_two
  def initialize()
    @num_one = random
    @num_two = random
  end

  def random()
    (rand() * 20).floor()
  end
  
  def get_question
    puts "What is the sum of #{self.num_one} + #{self.num_two}?"
  end

  def get_answer
    answer = gets.chomp
    answer_one = true

    if answer.to_i == self.num_one + self.num_two
      answer_one = true
      puts "Correct!"
    else
      answer_one = false
      puts "Incorrect!"
    end

    return answer_one

  end


end