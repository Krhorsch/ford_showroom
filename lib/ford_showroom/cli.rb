
class FordShowroom::CLI

  def call
    puts "Hello! Welcome to Ford!"
    puts "Please select a vehicle you would like to learn more about:"
    display_cars
    input = gets.strip
    car_selection(input)
    puts "If you would like to learn about other vehicles type 'more'"
    input = gets.strip
    if input == "more"
      call
    else
      puts "Thanks for stopping by, see you again soon!"
    end
  end

  def display_cars
    FordShowroom::Car.all_cars.each do |car|
      puts "#{FordShowroom::Car.all_cars.index(car)+1}. #{car.name}"
    end
  end

  def car_selection(input)
    index = input.to_i - 1
    selection = FordShowroom::Car.all_cars[index]
    puts "#{selection.price}"
    puts "#{selection.info}"
  end

end
