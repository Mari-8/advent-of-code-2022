require_relative "./stack.rb"
STACK_DATA = []

File.foreach("../columns.txt", chomp: true) do |line|
  stack = line.split(",")
  STACK_DATA << stack
end

class Run
  
  def initialize(cols)
    @columns = cols
  end

  def get_stacks

    stacks = @columns.map do |s|
      binding.irb
    end

    puts STACK_DATA
  end
end


run = Run.new(STACK_DATA)
run.get_stacks

