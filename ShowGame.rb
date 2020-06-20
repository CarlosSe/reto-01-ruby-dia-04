class ShowGame

  def self.printGame(game:)
    game.each do |row|
      row.each do |cell|
        print "#{cell.value}"
      end
      print "\n"
    end
  end
end