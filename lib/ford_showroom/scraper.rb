require 'open-uri'
require 'nokogiri'
require 'pry'
class FordShowroom::Scraper
  @@car_info = []
  def self.vehicle
    doc = Nokogiri::HTML(open("https://www.ford.com/new-cars/?gnav=footer-all%20vehicles"))
    cars = doc.css("div.single-static-feature-text h2 b").text
    cars_array = cars.split(/\u00A0|\s/)
    cars_array.each do |car|
      puts "#{cars_array.index(car)+1}. #{car}"
    end
  end

  def self.vehicle_info
    doc = Nokogiri::HTML(open("https://www.ford.com/new-cars/?gnav=footer-all%20vehicles"))
    cars = doc.css("div.single-static-feature-text")
    cars.each do |car|
      @@car_info << car.css(".m-text-default span").text
    end
    @@car_info
  end

  def self.all_car_info
    @@car_info
  end
end
