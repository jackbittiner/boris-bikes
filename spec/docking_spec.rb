require 'docking_station.rb'

describe DockingStation do
  it { is_expected.to respond_to :release_bike}

  it 'releases working bikes' do
    bike = subject.release_bike # sets up test to create subject
    expect(bike).to be_working
  end

  # docking_station.dock(bike)
  # test that there there is a method and an argument is passed in when called
  it { is_expected.to respond_to(:dock).with(1).argument }

  # more closely resembles feature of above [dock(bike)]
  # return the bike we dock
  it 'docks something' do
    bike = Bike.new
    expect(subject.dock(bike)).to eq bike
  end

  # docking1.bike
  # calling bike method on instance to return a docked bike
  # i.e a docked instance of the bike class
  it { is_expected.to respond_to(:bike) }

  # more closely resembles feature of above
  # def bike
  it 'returns docked bikes' do
    bike = Bike.new
    subject.dock(bike)
    expect(subject.bike).to eq bike
  end

end
