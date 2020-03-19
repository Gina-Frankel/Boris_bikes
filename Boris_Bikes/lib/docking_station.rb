require './lib/bike'
class DockingStation

  attr_reader :storage

  def initialize
    @storage = []
  end

  def release_bike
    # if the storage has no bikes then dont release bike
    if @storage.empty?
      fail "no bike available"
    else
      return Bike.new
    end
  end

  def dock_bikes(arg)
    #created @daisy
    @storage.push(arg)
  end

  def look_at_bike
    #@daisy stored
    @storage
  end

end
