require_relative 'bike'

class DockingStation
attr_reader :bikes

  def initialize
    @bikes = []
  end

  def release_bike
    fail 'No bikes available' if @bikes.empty?
    @bikes.pop
  end

  def dock(bike)
    fail 'Docking Station Full!' if @bikes.count >= 20
    @bikes << bike
  end

=begin This is what attr_reader does - this is a getter
  def bikes
    @bikes
  end
=end

end
