INPUT = File.read('../input.txt').split("\n")
require_relative "./rucksack.rb"
require_relative "./item_value_calculator.rb"

class Summarize
    attr_reader :lists

    def initialize(input)
      @lists = input
    end

    def sumarize_rucks
      rucks = lists.map { |l| Rucksack.new(l) }
      items = common_items(rucks)
 
      puts calculate_values(items).sum
    end

    def calculate_values(items)
      items.map { |item| ItemValueCalculator.new(item).score }
    end

    def common_items(rucks)
      rucks.map { |r| r.find_common_items }
    end
end

sum = Summarize.new(INPUT)
sum.sumarize_rucks
