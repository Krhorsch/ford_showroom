
class FordShowroom::CLI

  def call
    puts "Hello! Welcome to Ford!"
    puts "Please select a car you would like to learn more about"
    FordShowroom::Scraper.vehicle
    
  end
end
