class Elf
  attr_reader :calorie_load

  def initialize(calorie_load: [])
    @calorie_load = calorie_load.map(&:to_i)
  end

  def total_calories
    calorie_load.sum
  end
end
