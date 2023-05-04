class Stack 
  attr_reader :items
  
  def initialize(stack)
    @items = stack
  end

  def huh?
    puts items
  end
end
