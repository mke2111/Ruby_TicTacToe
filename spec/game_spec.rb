require_relative '../lib/game.rb'

describe Game do
  let(:game) { Game.new }
  context '#get_move' do
    let(:random_num) { rand(1..9) }
    it 'move is valid' do
      expect(game.get_move(random_num.to_s, 'O')).to be true
    end

    it 'move is invalid' do
      expect(game.get_move(!random_num.to_s, 'O')).to be false
    end
  end

  context '#winner?' do
    it 'you win' do
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

end
