
class FordShowroom::CLI

  def call
    puts "Hello! Welcome to Ford!"
    puts "Please select a car you would like to learn more about"
    FordShowroom::Scraper.vehicle
    input = gets.strip
    car_selection(input)
    puts "When you are done reading please type 'done'"
    call
  end

  def car_selection(input)
    if input.to_i - 1 == 0
      puts "#{FordShowroom::Scraper.all_car_info}"
    end
  end
end
