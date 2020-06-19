class Cell

    attr_reader :position_x, :position_y
    attr_accessor :value, :neighbors

    def initialize(position_x:, position_y:, value:, neighbors:)
        @position_x = position_x
        @position_y = position_y
        @value = value
        @neighbors = neighbors
    end

    def cell_status
        (self.value == 1) ? true : false # true if is alive false if is
    end
end
