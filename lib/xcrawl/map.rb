class Map
  def initialize
    @roomlist = []
  end
  
  def add_room(room, x, y)
    @roomlist << [room, x, y]
  end
end