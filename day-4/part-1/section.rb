class Section
    attr_reader :first, :second

    def initialize(coordinates)
        coordinates = coordinates.split(",")
        @first = full_range(coordinates[0])
        @second = full_range(coordinates[1])
    end

    def full_range(coords)
        start_end = coords.split("-")
    
        ("#{start_end[0]}".."#{start_end[1]}").to_a
    end

    def overlap?
        first.all? { |l| second.include?(l) } || second.all? { |l| first.include?(l) } ? true : nil
    end
end