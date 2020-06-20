class Cell
  attr_reader :position_y, :position_x
  attr_accessor :value, :neighbors
  
  def initialize(position_y:, position_x:, value:, neighbors:)
    @position_y = position_y
    @position_x = position_x
    @value = value
    @neighbors = neighbors
  end
end
