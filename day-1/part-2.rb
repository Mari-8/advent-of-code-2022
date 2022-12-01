require "csv"
require_relative "elf"

elf_chunks = File.read('elves.csv').split("\n\n")

elves = elf_chunks.map do |chunk|
  Elf.new(calorie_load: chunk.split)
end

p elves.map(&:total_calories).sort.last(3).sum
