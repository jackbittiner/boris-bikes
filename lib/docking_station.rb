require_relative 'bike'

class DockingStation
attr_reader :capacity

DEFAULT_CAPACITY = 20

  def initialize(capacity = DEFAULT_CAPACITY)
    @bikes = []
    @brokenbikes = []
    @capacity = capacity
  end

  def release_bike
    fail 'No working bikes available' if empty?
    bikes.pop
  end

  def dock(bike)
    fail 'Docking Station Full!' if full?
    bike.broken ? brokenbikes << bike : bikes << bike
  end

  private

  attr_reader :bikes, :brokenbikes

  def full?
    bikes.count + brokenbikes.count >= capacity
  end

  def empty?
    bikes.empty?
  end

end
