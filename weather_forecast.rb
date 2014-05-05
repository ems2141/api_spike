require 'json'
require 'faraday'

response = Faraday.get 'http://api.openweathermap.org/data/2.5/forecast/daily?lat=35&lon=139&cnt=10&mode=json'
json_data = response.body

forecast_data = JSON.parse(json_data)

p "The 10 day forecast includes: #{forecast_data["list"].map {|temp| temp["temp"]["day"]}}"