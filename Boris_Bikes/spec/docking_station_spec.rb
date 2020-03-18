require 'docking_station'

describe DockingStation do

   it { is_expected.to respond_to :release_bike }
    docking_station = DockingStation.new
   daisy = docking_station.release_bike
   it { expect(daisy).to respond_to :working?}


end
