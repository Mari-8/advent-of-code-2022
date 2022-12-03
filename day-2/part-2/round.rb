class Round
  attr_reader :attack, :strat

  def initialize(round_strat)
    @attack = round_strat[0]
    @strat = round_strat[2]
  end

  def score
    case attack
    when "A"
      if strat == "X"
        0 + 3
      elsif strat == "Y"
        3 + 1
      else 
        6 + 2
      end
    when "B"
      if strat == "X"
        0 + 1
      elsif strat == "Y"
        3 + 2
      else 
        6 + 3
      end
    when "C"
      if strat == "X"
        0 + 2
      elsif strat == "Y"
        3 + 3
      else 
        6 + 1
      end
    end
  end
end
