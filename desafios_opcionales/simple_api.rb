require 'rest-client'
require 'json'

url = 'https://apis.digital.gob.cl/dpa/regiones'

response = RestClient.get(url)
result = JSON.parse(response.to_str)

# puts response.class
# puts result
# puts result.class
puts "##################"
puts "Regiones de Chile"
puts "##################"
puts ""
result.each do |i|
    puts "Región: #{i['nombre']} -  lat: #{i['lat']} => lng: #{i['lng']}"
end