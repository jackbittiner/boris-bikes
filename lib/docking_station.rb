require_relative 'bike'

class DockingStation
attr_reader :bike

  def release_bike
    fail 'No bikes available' unless @bike
    @bike
  end

  def dock(bike)
    fail 'Docking Station Full!' if @bike
    @bike = bike
  end

=begin This is what attr_reader does - this is a getter
  def bike
    @bike
  end
=end

end
