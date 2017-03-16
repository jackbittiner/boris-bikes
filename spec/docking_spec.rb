require 'docking_station.rb'

describe DockingStation do
  it { is_expected.to respond_to :release_bike}

  describe '#release_bike' do
    it 'releases a bike' do
      bike = Bike.new
      subject.dock(bike)
      expect(subject.release_bike).to eq bike
    end

    describe '#release_bike' do
    it 'raises an error when bike method called on docking station equals nil' do
      expect {subject.release_bike}.to raise_error "No bikes available"
    end

    describe '#dock' do
      it 'raises an error when a capacity is reached' do
        20.times {subject.dock(Bike.new)}
        expect {subject.dock(Bike.new)}.to raise_error "Docking Station Full!"
      end
    end
  end

  end

  # docking_station.dock(bike)
  # test that there there is a method and an argument is passed in when called
  it { is_expected.to respond_to(:dock).with(1).argument }

  # more closely resembles feature of above [dock(bike)]
  # return the bike we dock
  it 'docks something' do
    bike = Bike.new
    expect(subject.dock(bike)).to include(bike)
  end

  # docking1.bike
  # calling bike method on instance to return a docked bike
  # i.e a docked instance of the bike class
  it { is_expected.to respond_to(:bikes) }

  # more closely resembles feature of above
  # def bike
  it 'returns docked bikes' do
    bike = Bike.new
    subject.dock(bike)
    bike2 = Bike.new
    subject.dock(bike2)
    expect(subject.bikes).to eq [bike, bike2]
  end



end
