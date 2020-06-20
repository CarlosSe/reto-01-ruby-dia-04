require_relative '../CreateBoard'

RSpec.describe CreateBoard do
  describe '.create' do
    context 'Creates a random board' do
      it 'returns array of given size' do
        expect(CreateBoard.create(size: 6).length).to eq(6)
      end
    end
  end
end