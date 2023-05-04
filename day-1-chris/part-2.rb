require_relative "elf"
require_relative "pack_sorter"

elf_packs = File.read('elves.csv').split("\n\n")

elves = elf_packs.map do |pack|
  Elf.new(pack.split)
end

elf_packs_summed = elves.map(&:sum_pack_contents)

pack_sorter =

