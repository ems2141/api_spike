require 'faraday'
require 'json'

response = Faraday.get 'http://api.openweathermap.org/data/2.5/weather?q=London,uk'
json_data = response.body

weather_data = JSON.parse(json_data)

# outputs temperature in London
puts "Temperature: #{weather_data["main"]["temp"]}."

