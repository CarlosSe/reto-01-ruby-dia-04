require_relative 'Cell'

class CreateBoard

  def self.create(size:)
    board = Array.new(size)
    size.times do |j|
      row = Array.new(size)
      size.times do |i|
        row[i] = Cell.new(position_y: j, position_x: i, value: rand(0..1), neighbors: 0)
      end
      board[j] = row
    end
    board
  end
end
