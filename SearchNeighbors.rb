class SearchNeighbors

    def search(game:, cell:)
        index_y = cell.position_y
        index_x = cell.position_x
        contador = 0
        for i in (index_y - 1)..(index_y + 1)
            for j in (index_x - 1)..(index_x + 1)
                next if i == 0 && j == 0
                if valid_neighbor(j, i, game.length - 1)
                    contador.next if game[i][j] == 1
                end
            end
        end     
    end

    def valid_neighbor(position_x:, position_y:, limit:)
        true if position_y > 0 && position_x < limit && position_y < limit
    end
end
