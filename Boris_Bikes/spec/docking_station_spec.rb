require 'docking_station'

describe DockingStation do
docking_station = DockingStation.new
let(:daisy){Bike.new} # indepedent bike

  it { is_expected.to respond_to :release_bike }
  #it - refering to describe DockingStation do

  it {expect(docking_station).to respond_to(:dock_bikes).with(1)}

  it do
    #subject(:daisy) {docking_station.release_bike}
    expect(daisy).to respond_to :working?
  end

  it "docking station releases bike with no bike" do
    #subject(:daisy) { docking_station.release_bike }
    expect { docking_station.release_bike}.to raise_error "no bike availble"#raise_error
  end
     # look at bike

  it do
  #subject(:daisy) { docking_station.dock_bikes}
  docking_station.dock_bikes(daisy)
  expect (docking_station.look_at_bike).to include(daisy)
  end

end
