class FordShowroom::Car
  attr_accessor :name, :info, :price
  @@all_cars = []
  def initialize
    @@all_cars << self
  end
end
