input = File.read('../input.txt').split("\n")
require_relative "./section.rb"

class Run
  attr_reader :sections 

  def initialize(sections)
    @sections = sections
  end

  def find_overlaps
    sections = get_sections
    
    overlaps = sections.map(&:overlap?).compact.count
    puts overlaps
  end

  def get_sections
    sections.map { |s| Section.new(s) }
  end 
end 


run = Run.new(input)
run.find_overlaps

