INPUT = File.read('../input.txt').split("\n")
require_relative "./group.rb"
require_relative "./item_value_calculator.rb"

class Summarize
    attr_reader :lists

    def initialize(input)
      @lists = input
    end

    def sumarize_rucks
      elfs = lists.each_slice(3).to_a
      groups = elfs.map { |group| Group.new(group) }
      items = common_items(groups)

      puts calculate_values(items).sum
    end

    def calculate_values(items)
      items.map { |item| ItemValueCalculator.new(item).score }
    end

    def common_items(groups)
      groups.map { |g| g.find_common_items }
    end
end

sum = Summarize.new(INPUT)
sum.sumarize_rucks
