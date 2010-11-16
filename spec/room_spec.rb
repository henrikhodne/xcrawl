require 'spec_helper'

describe Room do
  describe '#initialize' do
    it 'sets the size of the room' do
      size = [10, 7]
      room = Room.new(*size)
      room.size.should == size
    end
  end
  
  describe '#include?' do
    it 'returns true for objects in the room' do
      object = double('object')
      object.stub(:location) { [5, 5] }
      room = Room.new(10, 10)
      room.location = [0, 0]
      room.include?(object).should be_true
    end
    
    it 'returns false for objects not in the room' do
      object = double('object')
      object.stub(:location) { [15, 5] }
      room = Room.new(10, 10)
      room.location = [0, 0]
      room.include?(object).should be_false
    end
  end
end