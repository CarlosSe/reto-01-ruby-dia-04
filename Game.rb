require_relative 'CreateBoard'
require_relative 'SearchNeighbors'
require_relative 'ShowGame'

class Game
  SIZE = 25
  def start
    game = CreateBoard.create(size: SIZE)
    while true
      system('clear')
      game.each do |row|
        row.each do |cell|
          contador = SearchNeighbors.search(game: game, cell: cell)
          if contador >= 4 || contador <= 1
            cell.value = 0
          else
            cell.value = 1
          end
        end
      end
      ShowGame.printGame(game: game);
      sleep(1)
    end
  end
end

game = Game.new
game.start
