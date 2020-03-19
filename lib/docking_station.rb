require './lib/bike'
class DockingStation

  attr_reader :storage

  def initialize
    @storage = []
  end

  def release_bike
    if @storage.empty?
      fail "no bike available"
    else
      @storage.pop
    end
  end

  def dock_bikes(arg)
    if full?
      fail "Dock at maximum capacity"
    else
      @storage.push(arg)
    end
  end

  def full?
    @storage.size >= 20
  end

  def look_at_bike
    @storage
  end

end
