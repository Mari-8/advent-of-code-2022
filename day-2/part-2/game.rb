
require_relative "round"

STRATEGY = File.read("../strat-guide.txt").split("\n")

class Game
  attr_reader :strategy

  def initialize(strategy)
    @strategy = strategy
  end

  def play
    rounds = strategy.map do |r|
      Round.new(r)
    end

    scores = rounds.map(&:score)
    
    puts scores.sum
  end
end

game = Game.new(STRATEGY)

game.play


