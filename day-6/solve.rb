# Define a class to represent a stack of crates
class Stack
  attr_reader :crates

  def initialize(crates)
    @crates = crates
  end

  def move(num_crates, from_stack, to_stack)
    # Remove the specified number of crates from the "from" stack
    crates_to_move = from_stack.crates.pop(num_crates)

    # Add the crates to the "to" stack
    to_stack.crates.concat(crates_to_move)
  end
end

# Define the initial state of the stacks
stack1 = Stack.new(["P"])
stack2 = Stack.new(["F", "N"])
stack3 = Stack.new(["H", "T", "H"])
stack4 = Stack.new(["M", "C", "P"])
stack5 = Stack.new(["T", "J", "M", "F"])
stack6 = Stack.new(["V", "G", "D", "V"])
stack7 = Stack.new(["L", "Q", "S", "B"])
stack8 = Stack.new(
