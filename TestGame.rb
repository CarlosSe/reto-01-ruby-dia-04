require "minitest/autorun"

class TestGame < Minitest:TestGame

    def test_createBoard_returns_an_array
        board = CreateBoard.new
        board.create(size: 6)
        assert_equal(6, board.length)
    end
end