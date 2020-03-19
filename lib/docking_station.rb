require './lib/bike'
class DockingStation

  attr_reader :storage

  def initialize
    @storage = []
  end

  def release_bike
    # if the storage has no bikes then dont release bike
    if empty?
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

  def look_at_bike
    @storage
  end

  private

  def full?
    @storage.size >= 20
  end

  def empty?
    @storage.empty?
  end

end
