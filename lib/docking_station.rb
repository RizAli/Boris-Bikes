class DockingStation

  DEFAULT_CAPACITY = 20
  attr_accessor :capacity

  def initialize capacity
    @capacity = capacity
  end

  def initialize
    @bikes = []
  end

  def dock bike
    fail 'Station Full' if full?
    @bikes << bike
    nil
  end

  def release_bike
    raise 'No bikes available' if empty?
    if @bikes.last.broken?
      raise "No bikes available"
    else
      @bikes.pop
    end
  end

  private

  def full?
    @bikes.length >= 20
  end

  def empty?
    @bikes.empty?
  end


end

