require './lib/docking_station.rb'
require './lib/bike.rb'

describe 'bike release' do
  it 'creates and returns new instance of bike when release_bike is called on DockingStation' do
    expect((DockingStation.new.release_bike).class).to eq Bike
  end
end
