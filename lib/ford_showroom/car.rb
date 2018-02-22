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

  def car_selection(input)
    index = input.to_i - 1
    selection = FordShowroom::Car.all_cars[index]
    puts "#{selection.price}"
    puts "#{selection.info}"
  end

  def save
    @@all_cars << self
  end
end
