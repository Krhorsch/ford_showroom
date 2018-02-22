class FordShowroom::Car
  attr_accessor :name, :info, :price
  @@all_cars = []

  def self.display_cars
    all_cars.collect do |car|
       "#{all_cars.index(car)+1}. #{car.name}"
    end
  end

  def self.all_cars
    @@all_cars
  end

  def save
    @@all_cars << self
  end
end
