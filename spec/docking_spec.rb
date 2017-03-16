require 'docking_station.rb'

describe DockingStation do
  it { is_expected.to respond_to :release_bike}

  describe '#release_bike' do
    it 'releases a bike' do
      bike = double(:bike)
      subject.dock(bike)
      expect(subject.release_bike).to eq bike
    end


    it 'raises an error when bike method called on docking station equals nil' do
      expect {subject.release_bike}.to raise_error "No working bikes available"
    end

    it 'does not release broken bike' do
      bike = double(:bike)
      bike.report_broken
      subject.dock(bike)
      expect {subject.release_bike}.to raise_error 'No working bikes available'
    end
end

    describe '#dock' do
      it 'raises an error when a capacity is reached' do
        subject.capacity.times {subject.dock(double(:bike))}
        expect {subject.dock(double(:bike))}.to raise_error "Docking Station Full!"
      end

    end

    describe '#initialize' do
      it 'allows the user to set a capacity instance variable' do
        docking_station_1 = DockingStation.new(50)
        expect(docking_station_1.capacity).to eq 50
      end

      it 'sets the capacity to default value when no arguments are given' do
        docking_station_1 = DockingStation.new
        expect(docking_station_1.capacity).to eq 20
      end
    end


  # docking_station.dock(bike)
  # test that there there is a method and an argument is passed in when called
  it { is_expected.to respond_to(:dock).with(1).argument }

  # more closely resembles feature of above [dock(bike)]
  # return the bike we dock
  it 'docks something' do
    bike = double(:bike)
    expect(subject.dock(bike)).to include(bike)
  end

  # docking1.bike
  # calling bike method on instance to return a docked bike
  # i.e a docked instance of the bike class
  it { is_expected.to respond_to(:bikes) }

  # more closely resembles feature of above
  # def bike
  it 'returns docked bikes' do
    bike = double(:bike)
    subject.dock(bike)
    bike2 = double(:bike2)
    subject.dock(bike2)
    expect(subject.bikes).to eq [bike, bike2]
  end



end
