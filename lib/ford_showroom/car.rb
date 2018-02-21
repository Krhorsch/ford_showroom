class FordShowroom::Car
  attr_accessor :name, :info, :price
  @@all_cars = []
  def initialize
    @@all_cars << self
  end

  def self.display_cars
    all_cars.each do |car|
      puts "#{all_cars.index(car)+1} #{car.name}"
    end
  end

  def self.all_cars
    @@all_cars
  end
end
