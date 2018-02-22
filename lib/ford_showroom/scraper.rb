require 'open-uri'
require 'nokogiri'
require 'pry'
require 'capybara/poltergeist'

class FordShowroom::Scraper

  def self.vehicle
    doc = Nokogiri::HTML(open("https://www.ford.com/new-cars/?gnav=footer-all%20vehicles"))
    cars = doc.css("div.single-static-feature-text")
    cars.each do |x|
      new_car = FordShowroom::Car.new
      new_car.name = x.css("b").text
      new_car.info = x.css("span.description").text
      new_car.price = x.css(".price-value").text
      new_car.save
    end
  end
end
