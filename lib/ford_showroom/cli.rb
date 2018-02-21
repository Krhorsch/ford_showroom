
class FordShowroom::CLI

  def call
    puts "Hello! Welcome to Ford!"
    puts "Please select a vehicle you would like to learn more about:"
    FordShowroom::Car.display_cars
    binding.pry
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

  def car_selection(input)
    index = input.to_i - 1
    puts "#{FordShowroom::Car.[index]}"
  end
end
