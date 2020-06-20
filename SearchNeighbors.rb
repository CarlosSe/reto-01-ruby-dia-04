class SearchNeighbors

  def self.search(game:, cell:)
    contador = 0
    index_x = cell.position_x
    index_y = cell.position_y
    for i in (index_y - 1)..(index_y + 1) 
      for j in (index_x - 1)..(index_x + 1)
        next if i == 0 && j ==0
        if valid_neighbor(index_x: j, index_y: i, limit: game.length - 1)
          if game[i][j].value == 1
            contador += 1
          end
        end
      end
    end
    contador
  end

  def self.valid_neighbor(index_x:, index_y:, limit:)
    true if index_y > 0 && index_x < limit && index_y < limit
  end 
end
