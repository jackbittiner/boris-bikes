require_relative 'bike'

class DockingStation
attr_reader :bike

  def release_bike
    Bike.new
  end

  def dock(bike)
    @bike = bike
  end

=begin This is what attr_reader does 
  def bike
    @bike
  end
=end

end
