class Group
  attr_reader :group

  def initialize(group)
    @group = group
  end

  def find_common_items
    shared_items = []
    elf_1 = group[0]
    elf_2 = group[1]
    elf_3 = group[2]

    elf_1.each_char do |c|
      elf_2.include?(c) && elf_3.include?(c) ? shared_items << c : nil
    end

    shared_items.uniq.join
  end
end
