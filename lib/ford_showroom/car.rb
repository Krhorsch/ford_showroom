class FordShowroom::Car
  attr_accessor :name, :info
  @@all_cars = []
  def initialize
    @@all_cars << self
  end
end
