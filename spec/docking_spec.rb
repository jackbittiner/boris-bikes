require 'docking_station.rb'

describe DockingStation do
  it 'expects response when method release_bike is called on instance of DockingStation' do
    expect((DockingStation.new.release_bike).nil?).to eq false
  end
end
