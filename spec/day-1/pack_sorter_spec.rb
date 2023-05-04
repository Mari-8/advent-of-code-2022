require_relative "../../day-1-chris/pack_sorter"
packs = [100, 300, 200, 500, 400]

RSpec.describe PackSorter do
  subject { PackSorter.new(packs) }

  describe "#largest_pack_loads" do
    context "when 3 packs are specified" do
      it "sorts the packs" do
        expect(subject.largest_pack_loads).to eq([500, 400, 300])
      end

      it "returns the specified number of largest packs" do
        largest_packs = subject.largest_pack_loads(num_of_packs: 3)

        expect(largest_packs).to eq([500, 400, 300])
      end
    end

    context "when 5 pakcs are specified" do
      it "returns the specified number of largest packs" do
        largest_packs = subject.largest_pack_loads(num_of_packs: 5)

        expect(largest_packs).to eq([500, 400, 300, 200, 100])
      end
    end
  end
end
