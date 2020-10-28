require_relative '../lib/game.rb'

describe Game do
  let(:game) { Game.new }
  context '#get_move' do
    let(:random_num) { rand(1..9) }
    it 'Move is valid' do
      expect(game.get_move(random_num.to_s, 'O')).to be true
    end

    it 'Move is invalid' do
      expect(game.get_move(!random_num.to_s, 'O')).to be false
    end
  end

  context '#winner?' do
    it 'You win' do
      game.get_move('1', 'O')
      game.get_move('2', 'O')
      game.get_move('3', 'O')
      expect(game.winner?).to be true
    end

    it 'No win' do
      game.get_move('1', 'O')
      game.get_move('2', 'O')
      game.get_move('7', 'O')
      expect(game.winner?).to be nil
    end
  end
  context '#draw?' do
    it 'Its a draw' do
      game.get_move('1', 'O')
      game.get_move('2', 'X')
      game.get_move('3', 'O')
      game.get_move('4', 'X')
      game.get_move('5', 'O')
      game.get_move('6', 'X')
      game.get_move('7', 'O')
      game.get_move('8', 'X')
      game.get_move('9', 'O')
      expect(game.draw?).to be true
    end
  end
end
