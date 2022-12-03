class Round
  attr_reader :attack, :response
  attr_accessor :final

  def initialize(round_strat)
    @attack = round_strat[0]
    @response = round_strat[2]
  end

  def score
    case attack
    when "A"
      if response == "Y"
        6 + 2
      elsif response == "X"
        3 + 1
      else
        0 + 3
      end
    when "B"
      if response == "Z"
        6 + 3
      elsif response == "Y"
        3 + 2
      else
        0 + 1
      end
    when "C"
      if response == "X"
        6 + 1
      elsif response == "Z"
        3 + 3
      else
        0 + 2
      end
    end
  end
end

