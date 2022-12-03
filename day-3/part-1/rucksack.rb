class Rucksack
  attr_reader :comp_1, :comp_2 

  def initialize(contents)
    compartments = halves(contents)
    @comp_1 = compartments[0].split("")
    @comp_2 = compartments[1].split("")
  end

  def find_common_items
    shared_items = []

    comp_1.each do |item|
      comp_2.include?(item) ? shared_items << item : nil
    end

    shared_items.uniq.join
  end

  def halves(str)
    [str[0, str.size/2], str[str.size/2..-1]]
  end
  
end


# comp_1.map do |item| 
#   first_comp_map[item].nil? ? first_comp_map[item] = 1 : first_comp_map[item] += 1
# end

# comp_2.map do |item| 
#   second_comp_map[item].nil? ? second_comp_map[item] = 1 : second_comp_map[item] += 1
# end
