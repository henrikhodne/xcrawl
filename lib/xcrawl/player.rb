class Player
  attr_accessor :location
  
  def initialize
    @location = [5, 5] # Spawn location
  end
  
  def move_north!
    @location[0] += 5
  end
end