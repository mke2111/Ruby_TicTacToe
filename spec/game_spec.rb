require_relative '../lib/game.rb'

describe Game do
  context '#get_move' do
    let(:game) { Game.new }
    let(:random_num) { rand(1..9) }

    it 'move is valid' do
      expect(game.get_move(random_num.to_s, 'O')).to be true
    end

    it 'move is invalid' do
      expect(game.get_move(!random_num.to_s, 'O')).to be false
    end
  end
end
