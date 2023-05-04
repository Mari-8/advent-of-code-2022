class Elf
  attr_reader :pack_contents
  def initialize(pack_contents)
    @pack_contents = pack_contents
  end

  def sum_pack_contents
    pack_contents.map(&:to_i).sum
  end
end
