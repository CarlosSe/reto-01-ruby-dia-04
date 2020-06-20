require_relative '../SearchNeighbors'

RSpec.describe SearchNeighbors do
  describe '.valid_neighbor' do
    context 'Validate if neighbor is inside board' do
      it 'returns a boolean expresion' do
        expect(SearchNeighbors.valid_neighbor(index_x: 2, index_y: 2, limit: 4)).to be true
        expect(SearchNeighbors.valid_neighbor(index_x: -5, index_y: 4, limit: 4)).to be_falsey
        expect(SearchNeighbors.valid_neighbor(index_x: 3, index_y: 8, limit: 6)).to be_falsey
        expect(SearchNeighbors.valid_neighbor(index_x: 7, index_y: 7, limit: 7)).to be_falsey
      end
    end
  end
end
