class PackSorter
  attr_accessor :packs
  def initialize(packs)
    @packs = packs
  end

  def largest_pack_loads(num_of_packs: 3)
    sorted_packs.first(num_of_packs)
  end

  private

  def sorted_packs
    packs.sort.reverse
  end
end
