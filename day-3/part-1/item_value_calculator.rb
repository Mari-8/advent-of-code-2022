SCORE_MAP = {}
[*"a".."z", *"A".."Z"].each_with_index { |letter, index| SCORE_MAP[letter] = index + 1 }

class ItemValueCalculator
  attr_reader :item

  def initialize(item)
    @item = item
  end

  def score
    SCORE_MAP[item]
  end 
end
