require 'docking_station.rb'

describe DockingStation do
  it 'expects response when method release_bike is called on instance of DockingStation' do
    expect(subject).to respond_to :release_bike
  end
end
