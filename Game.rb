require_relative('CreateBoard')
require_relative('SearchNeighbors')

class Game 
    SIZE = 15

    def start_game
        board = CreateBoard.new
        search = SearchNeighbors.new 
        game = board.create(size: SIZE)
        game.each do |row|
            row.each do |cell|
                cell.neighbors = search.search(game: game, cell: cell.value) 
            end
        end
    end
end

game = Game.new
game.start_game
