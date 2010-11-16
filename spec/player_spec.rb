require 'spec_helper'

describe Player do
  describe '#initialize' do
    it 'spawns at the predefined spawn point' do
      player = Player.new
      player.location.should == Player::SPAWN_POINT
    end
  end
  
  describe '#move_north!' do
    it 'moves north' do
      player = Player.new
      player.location = [0, 0]
      player.move_north!
      player.location.should == [10, 0]
    end
  end
end