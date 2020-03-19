require 'docking_station'

describe DockingStation do
  subject(:docking_station) { described_class.new }
  let(:daisy){Bike.new}

  describe "release_bike" do
    let(:releasing_station) { DockingStation.new }

    it "releases a bike" do
      expect(releasing_station).to respond_to :release_bike 
    end

    it "raises error if asked to release bike with no bike" do
      expect { docking_station.release_bike}.to raise_error "no bike available"
    end
  end

  it "responds to dock bike with 1 argument" do
    expect(docking_station).to respond_to(:dock_bikes).with(1).argument
  end

  describe Bike do
    subject(:daisy){Bike.new}
    it "responds to working?" do
      expect(daisy).to respond_to :working?
    end
  end


  it "docks a bike" do
    docking_station.dock_bikes(daisy)
    expect(docking_station.look_at_bike).to include(daisy)
  end

end
