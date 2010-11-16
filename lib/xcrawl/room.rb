class Room
  attr_accessor :size, :location
  
  def initialize(x, y)
    @size = [x, y]
  end
  
  def include?(object)
    x_range = (self.location[0])..(self.location[0]+self.size[0])
    y_range = (self.location[1])..(self.location[1]+self.size[1])
    x_range.include?(object.location[0]) && y_range.include?(object.location[1])
  end
end