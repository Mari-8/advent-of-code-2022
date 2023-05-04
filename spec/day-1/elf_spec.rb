require_relative "../../day-1-chris/elf"
sample_input = ["10", "10", "10"]
sorted_sample = [10, 20, 30, 40, 50]

RSpec.describe Elf do
  subject { Elf.new(sample_input) }

  describe "#sum_pack_contents" do
    it "adds the contents" do
      total = subject.sum_pack_contents

      expect(total).to eq(30)
    end
  end
end
